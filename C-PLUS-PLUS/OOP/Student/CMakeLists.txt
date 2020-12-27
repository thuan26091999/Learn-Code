cmake_minimum_required(VERSION 3.16)
project(Student)

set(CMAKE_CXX_STANDARD 14)

add_executable(Student main.cpp student.cpp student.h liststudent.cpp liststudent.h)