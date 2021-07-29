#ifndef __PARSER_H__
#define __PARSER_H__

#include "json.h"
#include "jsonValue.h"

class Parser {
public:
    Parser(Value& val, const std::string& content);

private:
    void parse_whitespace() noexcept;
    void parse_value();
    void parse_literal(const char* literal, type t);
    void parse_number();
    void parse_string();
    void parse_string_raw(std::string &tmp);
    void parse_hex4(const char* &p, unsigned &u);
    void parse_encode_utf8(std::string &s, unsigned u) const noexcept;
    void parse_array();
    void parse_object();

    Value &val_;                // 解析后所得到的的JSON对象的引用
    const char *cur_;           // 指向Json字符串当前解析位置的指针
};

#endif