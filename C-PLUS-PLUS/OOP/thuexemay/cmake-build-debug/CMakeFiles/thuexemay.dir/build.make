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
CMAKE_SOURCE_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/thuexemay.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/thuexemay.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thuexemay.dir/flags.make

CMakeFiles/thuexemay.dir/main.cpp.o: CMakeFiles/thuexemay.dir/flags.make
CMakeFiles/thuexemay.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/thuexemay.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thuexemay.dir/main.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/main.cpp

CMakeFiles/thuexemay.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thuexemay.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/main.cpp > CMakeFiles/thuexemay.dir/main.cpp.i

CMakeFiles/thuexemay.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thuexemay.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/main.cpp -o CMakeFiles/thuexemay.dir/main.cpp.s

CMakeFiles/thuexemay.dir/motorbike.cpp.o: CMakeFiles/thuexemay.dir/flags.make
CMakeFiles/thuexemay.dir/motorbike.cpp.o: ../motorbike.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/thuexemay.dir/motorbike.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thuexemay.dir/motorbike.cpp.o -c /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/motorbike.cpp

CMakeFiles/thuexemay.dir/motorbike.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thuexemay.dir/motorbike.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/motorbike.cpp > CMakeFiles/thuexemay.dir/motorbike.cpp.i

CMakeFiles/thuexemay.dir/motorbike.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thuexemay.dir/motorbike.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/motorbike.cpp -o CMakeFiles/thuexemay.dir/motorbike.cpp.s

# Object files for target thuexemay
thuexemay_OBJECTS = \
"CMakeFiles/thuexemay.dir/main.cpp.o" \
"CMakeFiles/thuexemay.dir/motorbike.cpp.o"

# External object files for target thuexemay
thuexemay_EXTERNAL_OBJECTS =

thuexemay: CMakeFiles/thuexemay.dir/main.cpp.o
thuexemay: CMakeFiles/thuexemay.dir/motorbike.cpp.o
thuexemay: CMakeFiles/thuexemay.dir/build.make
thuexemay: CMakeFiles/thuexemay.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable thuexemay"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thuexemay.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thuexemay.dir/build: thuexemay

.PHONY : CMakeFiles/thuexemay.dir/build

CMakeFiles/thuexemay.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thuexemay.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thuexemay.dir/clean

CMakeFiles/thuexemay.dir/depend:
	cd /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug /home/nvt/Desktop/Code/C-PLUS-PLUS/OOP/thuexemay/cmake-build-debug/CMakeFiles/thuexemay.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thuexemay.dir/depend

