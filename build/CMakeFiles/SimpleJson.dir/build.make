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
CMAKE_SOURCE_DIR = /home/chenwek/mySimpleJson

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chenwek/mySimpleJson/build

# Include any dependencies generated for this target.
include CMakeFiles/SimpleJson.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimpleJson.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimpleJson.dir/flags.make

CMakeFiles/SimpleJson.dir/test.cpp.o: CMakeFiles/SimpleJson.dir/flags.make
CMakeFiles/SimpleJson.dir/test.cpp.o: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimpleJson.dir/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleJson.dir/test.cpp.o -c /home/chenwek/mySimpleJson/test.cpp

CMakeFiles/SimpleJson.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleJson.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenwek/mySimpleJson/test.cpp > CMakeFiles/SimpleJson.dir/test.cpp.i

CMakeFiles/SimpleJson.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleJson.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenwek/mySimpleJson/test.cpp -o CMakeFiles/SimpleJson.dir/test.cpp.s

CMakeFiles/SimpleJson.dir/src/json.cpp.o: CMakeFiles/SimpleJson.dir/flags.make
CMakeFiles/SimpleJson.dir/src/json.cpp.o: ../src/json.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SimpleJson.dir/src/json.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleJson.dir/src/json.cpp.o -c /home/chenwek/mySimpleJson/src/json.cpp

CMakeFiles/SimpleJson.dir/src/json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleJson.dir/src/json.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenwek/mySimpleJson/src/json.cpp > CMakeFiles/SimpleJson.dir/src/json.cpp.i

CMakeFiles/SimpleJson.dir/src/json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleJson.dir/src/json.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenwek/mySimpleJson/src/json.cpp -o CMakeFiles/SimpleJson.dir/src/json.cpp.s

CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o: CMakeFiles/SimpleJson.dir/flags.make
CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o: ../src/jsonGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o -c /home/chenwek/mySimpleJson/src/jsonGenerator.cpp

CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenwek/mySimpleJson/src/jsonGenerator.cpp > CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.i

CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenwek/mySimpleJson/src/jsonGenerator.cpp -o CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.s

CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o: CMakeFiles/SimpleJson.dir/flags.make
CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o: ../src/jsonParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o -c /home/chenwek/mySimpleJson/src/jsonParser.cpp

CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenwek/mySimpleJson/src/jsonParser.cpp > CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.i

CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenwek/mySimpleJson/src/jsonParser.cpp -o CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.s

CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o: CMakeFiles/SimpleJson.dir/flags.make
CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o: ../src/jsonValue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o -c /home/chenwek/mySimpleJson/src/jsonValue.cpp

CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chenwek/mySimpleJson/src/jsonValue.cpp > CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.i

CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chenwek/mySimpleJson/src/jsonValue.cpp -o CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.s

# Object files for target SimpleJson
SimpleJson_OBJECTS = \
"CMakeFiles/SimpleJson.dir/test.cpp.o" \
"CMakeFiles/SimpleJson.dir/src/json.cpp.o" \
"CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o" \
"CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o" \
"CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o"

# External object files for target SimpleJson
SimpleJson_EXTERNAL_OBJECTS =

SimpleJson: CMakeFiles/SimpleJson.dir/test.cpp.o
SimpleJson: CMakeFiles/SimpleJson.dir/src/json.cpp.o
SimpleJson: CMakeFiles/SimpleJson.dir/src/jsonGenerator.cpp.o
SimpleJson: CMakeFiles/SimpleJson.dir/src/jsonParser.cpp.o
SimpleJson: CMakeFiles/SimpleJson.dir/src/jsonValue.cpp.o
SimpleJson: CMakeFiles/SimpleJson.dir/build.make
SimpleJson: CMakeFiles/SimpleJson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chenwek/mySimpleJson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable SimpleJson"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimpleJson.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimpleJson.dir/build: SimpleJson

.PHONY : CMakeFiles/SimpleJson.dir/build

CMakeFiles/SimpleJson.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimpleJson.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimpleJson.dir/clean

CMakeFiles/SimpleJson.dir/depend:
	cd /home/chenwek/mySimpleJson/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chenwek/mySimpleJson /home/chenwek/mySimpleJson /home/chenwek/mySimpleJson/build /home/chenwek/mySimpleJson/build /home/chenwek/mySimpleJson/build/CMakeFiles/SimpleJson.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SimpleJson.dir/depend

