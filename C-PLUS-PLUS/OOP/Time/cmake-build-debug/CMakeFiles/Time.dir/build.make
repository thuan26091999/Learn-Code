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
CMAKE_SOURCE_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Time.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Time.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Time.dir/flags.make

CMakeFiles/Time.dir/main.cpp.o: CMakeFiles/Time.dir/flags.make
CMakeFiles/Time.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Time.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Time.dir/main.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/main.cpp

CMakeFiles/Time.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Time.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/main.cpp > CMakeFiles/Time.dir/main.cpp.i

CMakeFiles/Time.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Time.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/main.cpp -o CMakeFiles/Time.dir/main.cpp.s

CMakeFiles/Time.dir/time.cpp.o: CMakeFiles/Time.dir/flags.make
CMakeFiles/Time.dir/time.cpp.o: ../time.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Time.dir/time.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Time.dir/time.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/time.cpp

CMakeFiles/Time.dir/time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Time.dir/time.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/time.cpp > CMakeFiles/Time.dir/time.cpp.i

CMakeFiles/Time.dir/time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Time.dir/time.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/time.cpp -o CMakeFiles/Time.dir/time.cpp.s

# Object files for target Time
Time_OBJECTS = \
"CMakeFiles/Time.dir/main.cpp.o" \
"CMakeFiles/Time.dir/time.cpp.o"

# External object files for target Time
Time_EXTERNAL_OBJECTS =

Time: CMakeFiles/Time.dir/main.cpp.o
Time: CMakeFiles/Time.dir/time.cpp.o
Time: CMakeFiles/Time.dir/build.make
Time: CMakeFiles/Time.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Time"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Time.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Time.dir/build: Time

.PHONY : CMakeFiles/Time.dir/build

CMakeFiles/Time.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Time.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Time.dir/clean

CMakeFiles/Time.dir/depend:
	cd /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/Time/cmake-build-debug/CMakeFiles/Time.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Time.dir/depend

