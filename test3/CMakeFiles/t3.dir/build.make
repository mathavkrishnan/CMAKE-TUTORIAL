# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/mathavk/Local DIsk D/toplvl"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/mathavk/Local DIsk D/toplvl"

# Include any dependencies generated for this target.
include test3/CMakeFiles/t3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test3/CMakeFiles/t3.dir/compiler_depend.make

# Include the progress variables for this target.
include test3/CMakeFiles/t3.dir/progress.make

# Include the compile flags for this target's objects.
include test3/CMakeFiles/t3.dir/flags.make

test3/CMakeFiles/t3.dir/src/tt2.c.o: test3/CMakeFiles/t3.dir/flags.make
test3/CMakeFiles/t3.dir/src/tt2.c.o: test3/src/tt2.c
test3/CMakeFiles/t3.dir/src/tt2.c.o: test3/CMakeFiles/t3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mathavk/Local DIsk D/toplvl/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object test3/CMakeFiles/t3.dir/src/tt2.c.o"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test3/CMakeFiles/t3.dir/src/tt2.c.o -MF CMakeFiles/t3.dir/src/tt2.c.o.d -o CMakeFiles/t3.dir/src/tt2.c.o -c "/home/mathavk/Local DIsk D/toplvl/test3/src/tt2.c"

test3/CMakeFiles/t3.dir/src/tt2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/t3.dir/src/tt2.c.i"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/mathavk/Local DIsk D/toplvl/test3/src/tt2.c" > CMakeFiles/t3.dir/src/tt2.c.i

test3/CMakeFiles/t3.dir/src/tt2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/t3.dir/src/tt2.c.s"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/mathavk/Local DIsk D/toplvl/test3/src/tt2.c" -o CMakeFiles/t3.dir/src/tt2.c.s

test3/CMakeFiles/t3.dir/src/tt3.c.o: test3/CMakeFiles/t3.dir/flags.make
test3/CMakeFiles/t3.dir/src/tt3.c.o: test3/src/tt3.c
test3/CMakeFiles/t3.dir/src/tt3.c.o: test3/CMakeFiles/t3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mathavk/Local DIsk D/toplvl/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object test3/CMakeFiles/t3.dir/src/tt3.c.o"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test3/CMakeFiles/t3.dir/src/tt3.c.o -MF CMakeFiles/t3.dir/src/tt3.c.o.d -o CMakeFiles/t3.dir/src/tt3.c.o -c "/home/mathavk/Local DIsk D/toplvl/test3/src/tt3.c"

test3/CMakeFiles/t3.dir/src/tt3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/t3.dir/src/tt3.c.i"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/mathavk/Local DIsk D/toplvl/test3/src/tt3.c" > CMakeFiles/t3.dir/src/tt3.c.i

test3/CMakeFiles/t3.dir/src/tt3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/t3.dir/src/tt3.c.s"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/mathavk/Local DIsk D/toplvl/test3/src/tt3.c" -o CMakeFiles/t3.dir/src/tt3.c.s

# Object files for target t3
t3_OBJECTS = \
"CMakeFiles/t3.dir/src/tt2.c.o" \
"CMakeFiles/t3.dir/src/tt3.c.o"

# External object files for target t3
t3_EXTERNAL_OBJECTS =

bin/t3: test3/CMakeFiles/t3.dir/src/tt2.c.o
bin/t3: test3/CMakeFiles/t3.dir/src/tt3.c.o
bin/t3: test3/CMakeFiles/t3.dir/build.make
bin/t3: test3/libmylib2.a
bin/t3: test3/CMakeFiles/t3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/mathavk/Local DIsk D/toplvl/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ../bin/t3"
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/t3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test3/CMakeFiles/t3.dir/build: bin/t3
.PHONY : test3/CMakeFiles/t3.dir/build

test3/CMakeFiles/t3.dir/clean:
	cd "/home/mathavk/Local DIsk D/toplvl/test3" && $(CMAKE_COMMAND) -P CMakeFiles/t3.dir/cmake_clean.cmake
.PHONY : test3/CMakeFiles/t3.dir/clean

test3/CMakeFiles/t3.dir/depend:
	cd "/home/mathavk/Local DIsk D/toplvl" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/mathavk/Local DIsk D/toplvl" "/home/mathavk/Local DIsk D/toplvl/test3" "/home/mathavk/Local DIsk D/toplvl" "/home/mathavk/Local DIsk D/toplvl/test3" "/home/mathavk/Local DIsk D/toplvl/test3/CMakeFiles/t3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : test3/CMakeFiles/t3.dir/depend

