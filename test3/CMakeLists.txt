cmake_minimum_required(VERSION 2.8.12)
project(t3)

add_library(mylib2 STATIC lib/tt4.c)
target_include_directories(mylib2 PUBLIC lib)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ZMQ REQUIRED libzmq)
include_directories(${ZMQ_INCLUDE_DIRS})


file(GLOB_RECURSE SRC_FILES src/*.c)
add_executable(${PROJECT_NAME} ${SRC_FILES})
target_include_directories(${PROJECT_NAME} PUBLIC inc)

target_link_libraries(${PROJECT_NAME} PUBLIC mylib2 ${ZMQ_LIBRARIES})



