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
include src/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/main.dir/flags.make

src/CMakeFiles/main.dir/AbstractFactory.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/AbstractFactory.cpp.o: ../src/AbstractFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/main.dir/AbstractFactory.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/AbstractFactory.cpp.o -c /home/hhb/Project/C++/DesginModel/src/AbstractFactory.cpp

src/CMakeFiles/main.dir/AbstractFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/AbstractFactory.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/AbstractFactory.cpp > CMakeFiles/main.dir/AbstractFactory.cpp.i

src/CMakeFiles/main.dir/AbstractFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/AbstractFactory.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/AbstractFactory.cpp -o CMakeFiles/main.dir/AbstractFactory.cpp.s

src/CMakeFiles/main.dir/Adapter.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Adapter.cpp.o: ../src/Adapter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/main.dir/Adapter.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Adapter.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Adapter.cpp

src/CMakeFiles/main.dir/Adapter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Adapter.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Adapter.cpp > CMakeFiles/main.dir/Adapter.cpp.i

src/CMakeFiles/main.dir/Adapter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Adapter.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Adapter.cpp -o CMakeFiles/main.dir/Adapter.cpp.s

src/CMakeFiles/main.dir/Bridge.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Bridge.cpp.o: ../src/Bridge.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/main.dir/Bridge.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Bridge.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Bridge.cpp

src/CMakeFiles/main.dir/Bridge.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Bridge.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Bridge.cpp > CMakeFiles/main.dir/Bridge.cpp.i

src/CMakeFiles/main.dir/Bridge.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Bridge.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Bridge.cpp -o CMakeFiles/main.dir/Bridge.cpp.s

src/CMakeFiles/main.dir/Builder.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Builder.cpp.o: ../src/Builder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/main.dir/Builder.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Builder.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Builder.cpp

src/CMakeFiles/main.dir/Builder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Builder.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Builder.cpp > CMakeFiles/main.dir/Builder.cpp.i

src/CMakeFiles/main.dir/Builder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Builder.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Builder.cpp -o CMakeFiles/main.dir/Builder.cpp.s

src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.o: ../src/ChainOfResponsibility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/ChainOfResponsibility.cpp.o -c /home/hhb/Project/C++/DesginModel/src/ChainOfResponsibility.cpp

src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/ChainOfResponsibility.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/ChainOfResponsibility.cpp > CMakeFiles/main.dir/ChainOfResponsibility.cpp.i

src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/ChainOfResponsibility.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/ChainOfResponsibility.cpp -o CMakeFiles/main.dir/ChainOfResponsibility.cpp.s

src/CMakeFiles/main.dir/Command.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Command.cpp.o: ../src/Command.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/main.dir/Command.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Command.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Command.cpp

src/CMakeFiles/main.dir/Command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Command.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Command.cpp > CMakeFiles/main.dir/Command.cpp.i

src/CMakeFiles/main.dir/Command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Command.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Command.cpp -o CMakeFiles/main.dir/Command.cpp.s

src/CMakeFiles/main.dir/Composite.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Composite.cpp.o: ../src/Composite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/main.dir/Composite.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Composite.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Composite.cpp

src/CMakeFiles/main.dir/Composite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Composite.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Composite.cpp > CMakeFiles/main.dir/Composite.cpp.i

src/CMakeFiles/main.dir/Composite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Composite.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Composite.cpp -o CMakeFiles/main.dir/Composite.cpp.s

src/CMakeFiles/main.dir/Decorator.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Decorator.cpp.o: ../src/Decorator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/main.dir/Decorator.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Decorator.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Decorator.cpp

src/CMakeFiles/main.dir/Decorator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Decorator.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Decorator.cpp > CMakeFiles/main.dir/Decorator.cpp.i

src/CMakeFiles/main.dir/Decorator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Decorator.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Decorator.cpp -o CMakeFiles/main.dir/Decorator.cpp.s

src/CMakeFiles/main.dir/Facade.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Facade.cpp.o: ../src/Facade.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/main.dir/Facade.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Facade.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Facade.cpp

src/CMakeFiles/main.dir/Facade.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Facade.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Facade.cpp > CMakeFiles/main.dir/Facade.cpp.i

src/CMakeFiles/main.dir/Facade.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Facade.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Facade.cpp -o CMakeFiles/main.dir/Facade.cpp.s

src/CMakeFiles/main.dir/FactoryMethod.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/FactoryMethod.cpp.o: ../src/FactoryMethod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/main.dir/FactoryMethod.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/FactoryMethod.cpp.o -c /home/hhb/Project/C++/DesginModel/src/FactoryMethod.cpp

src/CMakeFiles/main.dir/FactoryMethod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/FactoryMethod.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/FactoryMethod.cpp > CMakeFiles/main.dir/FactoryMethod.cpp.i

src/CMakeFiles/main.dir/FactoryMethod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/FactoryMethod.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/FactoryMethod.cpp -o CMakeFiles/main.dir/FactoryMethod.cpp.s

src/CMakeFiles/main.dir/Flyweight.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Flyweight.cpp.o: ../src/Flyweight.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/main.dir/Flyweight.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Flyweight.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Flyweight.cpp

src/CMakeFiles/main.dir/Flyweight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Flyweight.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Flyweight.cpp > CMakeFiles/main.dir/Flyweight.cpp.i

src/CMakeFiles/main.dir/Flyweight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Flyweight.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Flyweight.cpp -o CMakeFiles/main.dir/Flyweight.cpp.s

src/CMakeFiles/main.dir/Interpreter.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Interpreter.cpp.o: ../src/Interpreter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/main.dir/Interpreter.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Interpreter.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Interpreter.cpp

src/CMakeFiles/main.dir/Interpreter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Interpreter.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Interpreter.cpp > CMakeFiles/main.dir/Interpreter.cpp.i

src/CMakeFiles/main.dir/Interpreter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Interpreter.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Interpreter.cpp -o CMakeFiles/main.dir/Interpreter.cpp.s

src/CMakeFiles/main.dir/Iterator.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Iterator.cpp.o: ../src/Iterator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/main.dir/Iterator.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Iterator.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Iterator.cpp

src/CMakeFiles/main.dir/Iterator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Iterator.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Iterator.cpp > CMakeFiles/main.dir/Iterator.cpp.i

src/CMakeFiles/main.dir/Iterator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Iterator.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Iterator.cpp -o CMakeFiles/main.dir/Iterator.cpp.s

src/CMakeFiles/main.dir/Mediator.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Mediator.cpp.o: ../src/Mediator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/main.dir/Mediator.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Mediator.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Mediator.cpp

src/CMakeFiles/main.dir/Mediator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Mediator.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Mediator.cpp > CMakeFiles/main.dir/Mediator.cpp.i

src/CMakeFiles/main.dir/Mediator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Mediator.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Mediator.cpp -o CMakeFiles/main.dir/Mediator.cpp.s

src/CMakeFiles/main.dir/Memento.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Memento.cpp.o: ../src/Memento.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/main.dir/Memento.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Memento.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Memento.cpp

src/CMakeFiles/main.dir/Memento.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Memento.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Memento.cpp > CMakeFiles/main.dir/Memento.cpp.i

src/CMakeFiles/main.dir/Memento.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Memento.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Memento.cpp -o CMakeFiles/main.dir/Memento.cpp.s

src/CMakeFiles/main.dir/Observer.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Observer.cpp.o: ../src/Observer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/main.dir/Observer.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Observer.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Observer.cpp

src/CMakeFiles/main.dir/Observer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Observer.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Observer.cpp > CMakeFiles/main.dir/Observer.cpp.i

src/CMakeFiles/main.dir/Observer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Observer.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Observer.cpp -o CMakeFiles/main.dir/Observer.cpp.s

src/CMakeFiles/main.dir/Prototype.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Prototype.cpp.o: ../src/Prototype.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/main.dir/Prototype.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Prototype.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Prototype.cpp

src/CMakeFiles/main.dir/Prototype.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Prototype.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Prototype.cpp > CMakeFiles/main.dir/Prototype.cpp.i

src/CMakeFiles/main.dir/Prototype.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Prototype.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Prototype.cpp -o CMakeFiles/main.dir/Prototype.cpp.s

src/CMakeFiles/main.dir/Proxy.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Proxy.cpp.o: ../src/Proxy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/main.dir/Proxy.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Proxy.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Proxy.cpp

src/CMakeFiles/main.dir/Proxy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Proxy.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Proxy.cpp > CMakeFiles/main.dir/Proxy.cpp.i

src/CMakeFiles/main.dir/Proxy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Proxy.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Proxy.cpp -o CMakeFiles/main.dir/Proxy.cpp.s

src/CMakeFiles/main.dir/Singleton.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Singleton.cpp.o: ../src/Singleton.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/main.dir/Singleton.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Singleton.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Singleton.cpp

src/CMakeFiles/main.dir/Singleton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Singleton.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Singleton.cpp > CMakeFiles/main.dir/Singleton.cpp.i

src/CMakeFiles/main.dir/Singleton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Singleton.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Singleton.cpp -o CMakeFiles/main.dir/Singleton.cpp.s

src/CMakeFiles/main.dir/State.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/State.cpp.o: ../src/State.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object src/CMakeFiles/main.dir/State.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/State.cpp.o -c /home/hhb/Project/C++/DesginModel/src/State.cpp

src/CMakeFiles/main.dir/State.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/State.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/State.cpp > CMakeFiles/main.dir/State.cpp.i

src/CMakeFiles/main.dir/State.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/State.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/State.cpp -o CMakeFiles/main.dir/State.cpp.s

src/CMakeFiles/main.dir/Strategy.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Strategy.cpp.o: ../src/Strategy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object src/CMakeFiles/main.dir/Strategy.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Strategy.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Strategy.cpp

src/CMakeFiles/main.dir/Strategy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Strategy.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Strategy.cpp > CMakeFiles/main.dir/Strategy.cpp.i

src/CMakeFiles/main.dir/Strategy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Strategy.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Strategy.cpp -o CMakeFiles/main.dir/Strategy.cpp.s

src/CMakeFiles/main.dir/Template.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Template.cpp.o: ../src/Template.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object src/CMakeFiles/main.dir/Template.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Template.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Template.cpp

src/CMakeFiles/main.dir/Template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Template.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Template.cpp > CMakeFiles/main.dir/Template.cpp.i

src/CMakeFiles/main.dir/Template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Template.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Template.cpp -o CMakeFiles/main.dir/Template.cpp.s

src/CMakeFiles/main.dir/Visitor.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/Visitor.cpp.o: ../src/Visitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building CXX object src/CMakeFiles/main.dir/Visitor.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/Visitor.cpp.o -c /home/hhb/Project/C++/DesginModel/src/Visitor.cpp

src/CMakeFiles/main.dir/Visitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/Visitor.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/Visitor.cpp > CMakeFiles/main.dir/Visitor.cpp.i

src/CMakeFiles/main.dir/Visitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/Visitor.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/Visitor.cpp -o CMakeFiles/main.dir/Visitor.cpp.s

src/CMakeFiles/main.dir/libhello.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/libhello.cpp.o: ../src/libhello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building CXX object src/CMakeFiles/main.dir/libhello.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/libhello.cpp.o -c /home/hhb/Project/C++/DesginModel/src/libhello.cpp

src/CMakeFiles/main.dir/libhello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/libhello.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/libhello.cpp > CMakeFiles/main.dir/libhello.cpp.i

src/CMakeFiles/main.dir/libhello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/libhello.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/libhello.cpp -o CMakeFiles/main.dir/libhello.cpp.s

src/CMakeFiles/main.dir/main.cpp.o: src/CMakeFiles/main.dir/flags.make
src/CMakeFiles/main.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Building CXX object src/CMakeFiles/main.dir/main.cpp.o"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/hhb/Project/C++/DesginModel/src/main.cpp

src/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hhb/Project/C++/DesginModel/src/main.cpp > CMakeFiles/main.dir/main.cpp.i

src/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /home/hhb/Project/C++/DesginModel/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hhb/Project/C++/DesginModel/src/main.cpp -o CMakeFiles/main.dir/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/AbstractFactory.cpp.o" \
"CMakeFiles/main.dir/Adapter.cpp.o" \
"CMakeFiles/main.dir/Bridge.cpp.o" \
"CMakeFiles/main.dir/Builder.cpp.o" \
"CMakeFiles/main.dir/ChainOfResponsibility.cpp.o" \
"CMakeFiles/main.dir/Command.cpp.o" \
"CMakeFiles/main.dir/Composite.cpp.o" \
"CMakeFiles/main.dir/Decorator.cpp.o" \
"CMakeFiles/main.dir/Facade.cpp.o" \
"CMakeFiles/main.dir/FactoryMethod.cpp.o" \
"CMakeFiles/main.dir/Flyweight.cpp.o" \
"CMakeFiles/main.dir/Interpreter.cpp.o" \
"CMakeFiles/main.dir/Iterator.cpp.o" \
"CMakeFiles/main.dir/Mediator.cpp.o" \
"CMakeFiles/main.dir/Memento.cpp.o" \
"CMakeFiles/main.dir/Observer.cpp.o" \
"CMakeFiles/main.dir/Prototype.cpp.o" \
"CMakeFiles/main.dir/Proxy.cpp.o" \
"CMakeFiles/main.dir/Singleton.cpp.o" \
"CMakeFiles/main.dir/State.cpp.o" \
"CMakeFiles/main.dir/Strategy.cpp.o" \
"CMakeFiles/main.dir/Template.cpp.o" \
"CMakeFiles/main.dir/Visitor.cpp.o" \
"CMakeFiles/main.dir/libhello.cpp.o" \
"CMakeFiles/main.dir/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

../bin/main: src/CMakeFiles/main.dir/AbstractFactory.cpp.o
../bin/main: src/CMakeFiles/main.dir/Adapter.cpp.o
../bin/main: src/CMakeFiles/main.dir/Bridge.cpp.o
../bin/main: src/CMakeFiles/main.dir/Builder.cpp.o
../bin/main: src/CMakeFiles/main.dir/ChainOfResponsibility.cpp.o
../bin/main: src/CMakeFiles/main.dir/Command.cpp.o
../bin/main: src/CMakeFiles/main.dir/Composite.cpp.o
../bin/main: src/CMakeFiles/main.dir/Decorator.cpp.o
../bin/main: src/CMakeFiles/main.dir/Facade.cpp.o
../bin/main: src/CMakeFiles/main.dir/FactoryMethod.cpp.o
../bin/main: src/CMakeFiles/main.dir/Flyweight.cpp.o
../bin/main: src/CMakeFiles/main.dir/Interpreter.cpp.o
../bin/main: src/CMakeFiles/main.dir/Iterator.cpp.o
../bin/main: src/CMakeFiles/main.dir/Mediator.cpp.o
../bin/main: src/CMakeFiles/main.dir/Memento.cpp.o
../bin/main: src/CMakeFiles/main.dir/Observer.cpp.o
../bin/main: src/CMakeFiles/main.dir/Prototype.cpp.o
../bin/main: src/CMakeFiles/main.dir/Proxy.cpp.o
../bin/main: src/CMakeFiles/main.dir/Singleton.cpp.o
../bin/main: src/CMakeFiles/main.dir/State.cpp.o
../bin/main: src/CMakeFiles/main.dir/Strategy.cpp.o
../bin/main: src/CMakeFiles/main.dir/Template.cpp.o
../bin/main: src/CMakeFiles/main.dir/Visitor.cpp.o
../bin/main: src/CMakeFiles/main.dir/libhello.cpp.o
../bin/main: src/CMakeFiles/main.dir/main.cpp.o
../bin/main: src/CMakeFiles/main.dir/build.make
../bin/main: src/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hhb/Project/C++/DesginModel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Linking CXX executable ../../bin/main"
	cd /home/hhb/Project/C++/DesginModel/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/main.dir/build: ../bin/main

.PHONY : src/CMakeFiles/main.dir/build

src/CMakeFiles/main.dir/clean:
	cd /home/hhb/Project/C++/DesginModel/build/src && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/main.dir/clean

src/CMakeFiles/main.dir/depend:
	cd /home/hhb/Project/C++/DesginModel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hhb/Project/C++/DesginModel /home/hhb/Project/C++/DesginModel/src /home/hhb/Project/C++/DesginModel/build /home/hhb/Project/C++/DesginModel/build/src /home/hhb/Project/C++/DesginModel/build/src/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/main.dir/depend
