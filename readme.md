## 实现的JSON库主要满足三个需求：
1. 将JSON文本解析为一个树状结构（parse）；
2. 提供接口访问该数据结构（access）；
3. 把数据结构转换为JSON文本（stringfy）

## 特性：
- 仅支持以`double`存储JSON`number`类型
- JSON `object`类型不支持重复键
- 仅支持utf-8

## 实现：
### 头文件和API设计
为降低文件间的编译依赖关系，把接口从从实现中分离，`Json`类只提供接口，`Value`类负责实现该接口，`Json`类通过一个`std::unique_ptr`实现对`Value`的访问。<br>
解析一个JSON字符串的一般用法是：
```C++
Json json;
std::string str("...");
josn.parse(str);
json.get_typr();        // 获取其类型
```
JSON 的数据类型声明为一个枚举类型：
```C++
enum type : int {NUll, True, False, Number, String, Array, Object};
```

### JSON对象的各类型表示
一个值不可能同时为多种类型，所以可以使用union(C++17可使用std::variant代替union)来节省内存。由于bool类型足够简单，可以把bool的两个值true和false视为两个单独的类型来处理，所以无需在union中声明bool类型。C++的早期版本规定，在union中不能含有定义了构造函数或拷贝控制成员的类类型成员（如本例中的string和vector）。C++11标准取消了这一限制。不过，如果union的成员类型定义了自己的构造函数或拷贝控制成员，则该union的用法要比只含有内置类型的union更复杂。
```C++
enum type : int{
    Null,
    True,
    False,
    Number,
    String,
    Array,
    Object
};
class Value {
    type type_ = Null;
    union {
        double num_;
        std::string str_;
        std::vector<Value> arr_;
        std::vector<std::pair<std::string, Value>> obj_;
    };
};
```
#### 使用类管理union成员
> 对于union来说，要想构造或销毁类类型的成员必须执行非常复杂的操作，因此我们通常把含有类类型成员的union内嵌在另一个类当中。这个类可以管理并控制与union的类类型成员有关的状态转换。 为了追踪union中到底存储了什么类型的值，我们通常会定义一个独立的对象，该对象称为union的判别式（discriminant）。我们可以使用判别式来辨认union存储的值。

我们使用Value类来管理union成员，我们将判别式type_也作为Value的成员，我们将判别式定义为JSON数据类型的枚举类型来追踪其union成员的状态。在我们的类中定义了一些函数，这些函数可以将union的某种类型的值赋给union成员以及销毁union的值：
```C++
class Value {
    void init(const Value &rhs);
    void free();
    void set_type(type t);
    void set_number(double d);
    void set_string(const std::string& str);
    void set_array(const std::vector<Value> &arr);
    void set_object(const std::vector<std::pair<std::string, Value>> &obj);

    json::type type_ = json::Null;
    union {
        double num_;
        std::string str_;
        std::vector<Value> arr_;
        std::vector<std::pair<std::string, Value>> obj_;
    };
};
```

#### 管理判别式并销毁类类型成员
因为我们的union含有定义了析构函数的成员，所以必须为union也定义一个析构函数以销毁类类型成员。和普通的类类型成员不一样，作为union组成部分的类成员无法自动销毁。因为析构函数不清楚union存储的值是什么类型，所以它无法确定应该销毁哪个成员。我们的析构函数首先检查被销毁的对象中是否存储着类类型，如果是，则类的析构函数显式地调用相应的析构函数释放该类型使用的内存;反之，如果union存储的值是内置类型，则类的析构函数什么也不做。
```C++
void Value::free()      //析构函数调用该函数
{
    using std::string;
    switch (type_) {
        case json::String: str_.~string();      //显式调用相应析构函数
            break;
        case json::Array:  arr_.~vector<Value>();
                break;
        case json::Object: obj_.~vector<std::pair<std::string, Value>>();
                break;
    }
}
```

### 实现解析器
解析器封装在Parser类中，Parser类有两个成员变量，分别是解析后所得的Json对象引用val_和一个指向json字符串当前解析位置的char指针cur_。解析在Parser的构造函数中进行：
```C++
    Parser::Parser(Value &val, const std::string &content)
        : val_(val), cur_(content.c_str())
    {
        val_.set_type(json::Null);
        parse_whitespace(); //跳过空字符
        parse_value();
        parse_whitespace();
        if(*cur_ != '\0'){
            val_.set_type(json::Null);
            throw(Exception("parse root not singular"));
        }
    }
```
若解析失败，Parser会把val设为null类型，所以先把它设为null，让parse_value()写入解析出来的值。由于JSON语法的类型简单，只需要检测首个字符便可知道它是哪个类型的值，然后调用相关类型的解析：
```C++
    void Parser::parse_value()
    {
        switch (*cur_) {
            case 'n' : parse_literal("null", json::Null);  return;
            case 't' : parse_literal("true", json::True);  return;
            case 'f' : parse_literal("false", json::False); return;
            case '\"': parse_string(); return;
            case '[' : parse_array();  return;
            case '{' : parse_object(); return;
            default  : parse_number(); return;
            case '\0': throw(Exception("parse expect value"));
        }
    }
```


