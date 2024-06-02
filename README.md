#CMAKE TUTORIAL

1. Above is the example which contained full structure of begginer level cmake programming
   However we will be going through how we build it step by step,

<h6>Create directory along with main.c file</h6>
-->test2
  -->main.c
  -->CMakeLists.txt [create this file]

Next we gonna iterate lines,

```
cmake_minimum_required(VERSION 2.8.12) #mentions minimum version of the cmake required

project(t2) #declare name of the project

add_executable(${PROJECT_NAME} main.c) //

```
then, 
```
cmake .
make
```
