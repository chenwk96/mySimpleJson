#ifndef JSON_GENERATOR_H
#define JSON_GENERATOR_H

#include <string>
#include "jsonValue.h"

class Generator {
public:
    Generator(const Value& val, std::string& result);

private:
    void stringify_value(const Value& v);
    void stringify_string(const std::string& str);

    std::string& res_;
};
#endif