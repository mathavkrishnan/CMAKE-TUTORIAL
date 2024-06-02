cmake_minimum_required(VERSION 2.8.12)
project(t2)

#this creates library

add_library(randlib STATIC lib/t4.c)
target_include_directories(randlib PUBLIC lib)

#checks if zmq package is installed in system

find_package(PkgConfig REQUIRED)
pkg_check_modules(ZMQ REQUIRED libzmq)
include_directories(${ZMQ_INCLUDE_DIRS}) #this includes .so file from etc/lib/......

#gets all .c files from src and adds as executable
file(GLOB_RECURSE SRC_FILES src/*.c)
add_executable(${PROJECT_NAME} ${SRC_FILES})


#include inc folder 
target_include_directories(${PROJECT_NAME} PUBLIC inc)

target_link_libraries(${PROJECT_NAME} PUBLIC randlib ${ZMQ_LIBRARIES})



