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
CMAKE_COMMAND = /snap/clion/114/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/114/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DateTime.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DateTime.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DateTime.dir/flags.make

CMakeFiles/DateTime.dir/main.cpp.o: CMakeFiles/DateTime.dir/flags.make
CMakeFiles/DateTime.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DateTime.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DateTime.dir/main.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/main.cpp

CMakeFiles/DateTime.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DateTime.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/main.cpp > CMakeFiles/DateTime.dir/main.cpp.i

CMakeFiles/DateTime.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DateTime.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/main.cpp -o CMakeFiles/DateTime.dir/main.cpp.s

CMakeFiles/DateTime.dir/date.cpp.o: CMakeFiles/DateTime.dir/flags.make
CMakeFiles/DateTime.dir/date.cpp.o: ../date.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DateTime.dir/date.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DateTime.dir/date.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/date.cpp

CMakeFiles/DateTime.dir/date.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DateTime.dir/date.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/date.cpp > CMakeFiles/DateTime.dir/date.cpp.i

CMakeFiles/DateTime.dir/date.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DateTime.dir/date.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/date.cpp -o CMakeFiles/DateTime.dir/date.cpp.s

# Object files for target DateTime
DateTime_OBJECTS = \
"CMakeFiles/DateTime.dir/main.cpp.o" \
"CMakeFiles/DateTime.dir/date.cpp.o"

# External object files for target DateTime
DateTime_EXTERNAL_OBJECTS =

DateTime: CMakeFiles/DateTime.dir/main.cpp.o
DateTime: CMakeFiles/DateTime.dir/date.cpp.o
DateTime: CMakeFiles/DateTime.dir/build.make
DateTime: CMakeFiles/DateTime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable DateTime"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DateTime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DateTime.dir/build: DateTime

.PHONY : CMakeFiles/DateTime.dir/build

CMakeFiles/DateTime.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DateTime.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DateTime.dir/clean

CMakeFiles/DateTime.dir/depend:
	cd /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/DateTime/cmake-build-debug/CMakeFiles/DateTime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DateTime.dir/depend

