# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/sh/Downloads/hackrf/codec2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sh/Downloads/hackrf/codec2/build_linux

# Include any dependencies generated for this target.
include misc/CMakeFiles/pre.dir/depend.make

# Include the progress variables for this target.
include misc/CMakeFiles/pre.dir/progress.make

# Include the compile flags for this target's objects.
include misc/CMakeFiles/pre.dir/flags.make

misc/CMakeFiles/pre.dir/pre.c.o: misc/CMakeFiles/pre.dir/flags.make
misc/CMakeFiles/pre.dir/pre.c.o: ../misc/pre.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object misc/CMakeFiles/pre.dir/pre.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pre.dir/pre.c.o   -c /home/sh/Downloads/hackrf/codec2/misc/pre.c

misc/CMakeFiles/pre.dir/pre.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pre.dir/pre.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/misc/pre.c > CMakeFiles/pre.dir/pre.c.i

misc/CMakeFiles/pre.dir/pre.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pre.dir/pre.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/misc/pre.c -o CMakeFiles/pre.dir/pre.c.s

# Object files for target pre
pre_OBJECTS = \
"CMakeFiles/pre.dir/pre.c.o"

# External object files for target pre
pre_EXTERNAL_OBJECTS =

misc/pre: misc/CMakeFiles/pre.dir/pre.c.o
misc/pre: misc/CMakeFiles/pre.dir/build.make
misc/pre: src/libcodec2.so.0.9
misc/pre: misc/CMakeFiles/pre.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pre"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pre.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
misc/CMakeFiles/pre.dir/build: misc/pre

.PHONY : misc/CMakeFiles/pre.dir/build

misc/CMakeFiles/pre.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && $(CMAKE_COMMAND) -P CMakeFiles/pre.dir/cmake_clean.cmake
.PHONY : misc/CMakeFiles/pre.dir/clean

misc/CMakeFiles/pre.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/misc /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/misc /home/sh/Downloads/hackrf/codec2/build_linux/misc/CMakeFiles/pre.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : misc/CMakeFiles/pre.dir/depend
