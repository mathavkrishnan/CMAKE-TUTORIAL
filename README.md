<h2 style="color: #2E8B57;">🚀 CMake Tutorial for Beginners 🚀</h2>

<p>Below is an example containing the full structure of beginner-level CMake programming. We will go through how to build it step by step.</p>

<h3 style="color: #4682B4;">📁 Create Directory Along with main.c File 📁</h3>

<p>📝 <b>CMakeLists.txt</b> [create this file]</p>

<p>Next, we will iterate through the lines:</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

add_executable(${PROJECT_NAME} main.c) # create an executable using main.c
</code>
</pre>

<p>Then, run the following commands:</p>

<pre style="background-color: #F5F5F5; padding: 10px; border-radius: 5px;">
<code style="color: #A52A2A;">
cmake .
make
</code>
</pre>

<h3 style="color: #4682B4;">📂 Create Multiple C Files and Assign Folder 📂</h3>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code>
toplevel
--> build
--> src
   ---> main.c
   ---> hello.c
CMakeLists.txt
</code>
</pre>

<p>Go to the build directory, then edit <b>CMakeLists.txt</b>:</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

add_executable(${PROJECT_NAME} main.c hello.c) # create an executable using main.c and hello.c
</code>
</pre>

<p>(or)</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 2.8.12) # mentions minimum version of CMake required

project(t2) # declare the name of the project

file(GLOB_RECURSE SRC_FILES src/*.c) # find all .c files in src directory

add_executable(${PROJECT_NAME} ${SRC_FILES}) # create an executable using all found .c files
</code>
</pre>

<p>Then, run the following commands:</p>

<pre style="background-color: #F5F5F5; padding: 10px; border-radius: 5px;">
<code style="color: #A52A2A;">
cd build
cmake ..
make
</code>
</pre>

<h3 style="color: #4682B4;">📂 Link Header Files 📂</h3>

<p>Create a header file in the inc folder. Here is the file structure:</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code>
toplevel
   --> inc
      --> test2.h
   --> src
      --> main.c
      --> hello.c
   --> CMakeLists.txt
</code>
</pre>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 2.8.12)
project(t2)

# gets all .c files from src and adds as executable
file(GLOB_RECURSE SRC_FILES src/*.c)
add_executable(${PROJECT_NAME} ${SRC_FILES})

target_include_directories(${PROJECT_NAME} PUBLIC inc)
</code>
</pre>

<h3 style="color: #4682B4;">📂 Create .c File into Library and Use It 📂</h3>

<p>Create a header file in the inc folder. Here is the file structure:</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code>
toplevel
   --> lib
      --> t4.c
   --> inc
      --> test2.h
   --> src
      --> main.c
      --> hello.c
   --> CMakeLists.txt
</code>
</pre>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 2.8.12)
project(t2)

# this creates library
add_library(randlib STATIC lib/t4.c)
target_include_directories(randlib PUBLIC lib)

# gets all .c files from src and adds as executable
file(GLOB_RECURSE SRC_FILES src/*.c)
add_executable(${PROJECT_NAME} ${SRC_FILES})

target_include_directories(${PROJECT_NAME} PUBLIC inc)

target_link_libraries(${PROJECT_NAME} PUBLIC randlib ${ZMQ_LIBRARIES})
</code>
</pre>

<h3 style="color: #4682B4;">📂 Link many folders into one 📂</h3>

<p>duplicate test2 and rename it to test3, also rename parameters inside test3:</p>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code>
toplvl
|
|
test2
   --> lib
      --> t4.c
   --> inc
      --> test2.h
   --> src
      --> main.c
      --> hello.c
   --> CMakeLists.txt
test3
   --> lib
      --> t4.c
   --> inc
      --> test2.h
   --> src
      --> main.c
      --> hello.c
   --> CMakeLists.txt

CMakeLists.txt [edit this]
</code>
</pre>

<pre style="background-color: #F0F8FF; padding: 10px; border-radius: 5px;">
<code style="color: #00008B;">
cmake_minimum_required(VERSION 3.23.2)
project(app)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin") #this creates bin in toplvl and adds all the binaries inside bin


ADD_SUBDIRECTORY(${CMAKE_CURRENT_LIST_DIR}/test2)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_LIST_DIR}/test3)
</code>
</pre>

<h3>Task try to compile binaries inside bin to one binary t in root of the folder</h3>
<h2 style="color: #2E8B57;">🎉 Your project should now be successfully built! 🎉</h2>
