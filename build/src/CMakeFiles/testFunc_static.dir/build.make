# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hhb/Project/C++/DesginModel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hhb/Project/C++/DesginModel/build

# Include any dependencies generated for this target.
include src/CMakeFiles/testFunc_static.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/testFunc_static.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/testFunc_static.dir/flags.make

src/CMakeFiles/testFunc_static.dir/libhello.cpp.o: src/CMakeFiles/testFunc_static.dir/flags.make
src/CMakeFiles/testFunc_static.dir/libhello.cpp.o: ../src/libhello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/testFunc_static.dir/libhello.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testFunc_static.dir/libhello.cpp.o -c /home/hhb/Project/C++/DesginModel/src/libhello.cpp

src/CMakeFiles/testFunc_static.dir/libhello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testFunc_static.dir/libhello.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/libhello.cpp > CMakeFiles/testFunc_static.dir/libhello.cpp.i

src/CMakeFiles/testFunc_static.dir/libhello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testFunc_static.dir/libhello.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/libhello.cpp -o CMakeFiles/testFunc_static.dir/libhello.cpp.s

# Object files for target testFunc_static
testFunc_static_OBJECTS = \
"CMakeFiles/testFunc_static.dir/libhello.cpp.o"

# External object files for target testFunc_static
testFunc_static_EXTERNAL_OBJECTS =

../lib/libtestFunc.a: src/CMakeFiles/testFunc_static.dir/libhello.cpp.o
../lib/libtestFunc.a: src/CMakeFiles/testFunc_static.dir/build.make
../lib/libtestFunc.a: src/CMakeFiles/testFunc_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../lib/libtestFunc.a"
	cd /home/hhb/Project/C++/DesginModel/build/src && $(CMAKE_COMMAND) -P CMakeFiles/testFunc_static.dir/cmake_clean_target.cmake
	cd /home/hhb/Project/C++/DesginModel/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testFunc_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/testFunc_static.dir/build: ../lib/libtestFunc.a

.PHONY : src/CMakeFiles/testFunc_static.dir/build

src/CMakeFiles/testFunc_static.dir/clean:
	cd /home/hhb/Project/C++/DesginModel/build/src && $(CMAKE_COMMAND) -P CMakeFiles/testFunc_static.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/testFunc_static.dir/clean

src/CMakeFiles/testFunc_static.dir/depend:
	cd /home/hhb/Project/C++/DesginModel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hhb/Project/C++/DesginModel /home/hhb/Project/C++/DesginModel/src /home/hhb/Project/C++/DesginModel/build /home/hhb/Project/C++/DesginModel/build/src /home/hhb/Project/C++/DesginModel/build/src/CMakeFiles/testFunc_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/testFunc_static.dir/depend

