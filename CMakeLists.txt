cmake_minimum_required(VERSION 3.10)

project(SIMPLEJSON)

##set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -o2 -Wall -std=c++11")

include_directories(${CMAKE_SOURCE_DIR}/include)

aux_source_directory(./src SRC)


add_executable(SimpleJson test.cpp ${SRC})