# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/duda/Downloads/programming/Benchmark_Test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duda/Downloads/programming/Benchmark_Test/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/mptest.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/mptest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mptest.dir/flags.make

CMakeFiles/mptest.dir/mptest.c.o: CMakeFiles/mptest.dir/flags.make
CMakeFiles/mptest.dir/mptest.c.o: ../mptest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duda/Downloads/programming/Benchmark_Test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mptest.dir/mptest.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mptest.dir/mptest.c.o -c /home/duda/Downloads/programming/Benchmark_Test/mptest.c

CMakeFiles/mptest.dir/mptest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mptest.dir/mptest.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/duda/Downloads/programming/Benchmark_Test/mptest.c > CMakeFiles/mptest.dir/mptest.c.i

CMakeFiles/mptest.dir/mptest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mptest.dir/mptest.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/duda/Downloads/programming/Benchmark_Test/mptest.c -o CMakeFiles/mptest.dir/mptest.c.s

# Object files for target mptest
mptest_OBJECTS = \
"CMakeFiles/mptest.dir/mptest.c.o"

# External object files for target mptest
mptest_EXTERNAL_OBJECTS =

mptest: CMakeFiles/mptest.dir/mptest.c.o
mptest: CMakeFiles/mptest.dir/build.make
mptest: CMakeFiles/mptest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duda/Downloads/programming/Benchmark_Test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mptest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mptest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mptest.dir/build: mptest
.PHONY : CMakeFiles/mptest.dir/build

CMakeFiles/mptest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mptest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mptest.dir/clean

CMakeFiles/mptest.dir/depend:
	cd /home/duda/Downloads/programming/Benchmark_Test/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duda/Downloads/programming/Benchmark_Test /home/duda/Downloads/programming/Benchmark_Test /home/duda/Downloads/programming/Benchmark_Test/cmake-build-release /home/duda/Downloads/programming/Benchmark_Test/cmake-build-release /home/duda/Downloads/programming/Benchmark_Test/cmake-build-release/CMakeFiles/mptest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mptest.dir/depend

