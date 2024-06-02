<h6>🚀 CMake Tutorial for Beginners 🚀</h6>

1. Below is an example containing the full structure of beginner-level CMake programming. We will go through how to build it step by step.

<h6>📁 Create Directory Along with main.c File 📁</h6>

📝 **CMakeLists.txt** [create this file]

Next, we will iterate through the lines:

```cmake
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

add_executable(${PROJECT_NAME} main.c) # create an executable using main.c
```

Then, run the following commands:

```bash
cmake .
make
```

<h6>📂 Create Multiple C Files and Assign Folder 📂</h6>

```
toplevel
--> build
--> src
   ---> main.c
   ---> hello.c
CMakeLists.txt
```

Go to the build directory, then edit **CMakeLists.txt**:

```cmake
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

add_executable(${PROJECT_NAME} main.c hello.c) # create an executable using main.c and hello.c
```

(or)

```cmake
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

file(GLOB_RECURSE SRC_FILES src/*.c) # find all .c files in src directory

add_executable(${PROJECT_NAME} ${SRC_FILES}) # create an executable using all found .c files
```

Then, run the following commands:

```bash
cd build
cmake ..
make
```

🎉 Your project should now be successfully built! 🎉
