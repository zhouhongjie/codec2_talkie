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
include misc/CMakeFiles/est_n0.dir/depend.make

# Include the progress variables for this target.
include misc/CMakeFiles/est_n0.dir/progress.make

# Include the compile flags for this target's objects.
include misc/CMakeFiles/est_n0.dir/flags.make

misc/CMakeFiles/est_n0.dir/est_n0.c.o: misc/CMakeFiles/est_n0.dir/flags.make
misc/CMakeFiles/est_n0.dir/est_n0.c.o: ../misc/est_n0.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object misc/CMakeFiles/est_n0.dir/est_n0.c.o"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/est_n0.dir/est_n0.c.o   -c /home/sh/Downloads/hackrf/codec2/misc/est_n0.c

misc/CMakeFiles/est_n0.dir/est_n0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/est_n0.dir/est_n0.c.i"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sh/Downloads/hackrf/codec2/misc/est_n0.c > CMakeFiles/est_n0.dir/est_n0.c.i

misc/CMakeFiles/est_n0.dir/est_n0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/est_n0.dir/est_n0.c.s"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sh/Downloads/hackrf/codec2/misc/est_n0.c -o CMakeFiles/est_n0.dir/est_n0.c.s

# Object files for target est_n0
est_n0_OBJECTS = \
"CMakeFiles/est_n0.dir/est_n0.c.o"

# External object files for target est_n0
est_n0_EXTERNAL_OBJECTS =

misc/est_n0: misc/CMakeFiles/est_n0.dir/est_n0.c.o
misc/est_n0: misc/CMakeFiles/est_n0.dir/build.make
misc/est_n0: misc/CMakeFiles/est_n0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sh/Downloads/hackrf/codec2/build_linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable est_n0"
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/est_n0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
misc/CMakeFiles/est_n0.dir/build: misc/est_n0

.PHONY : misc/CMakeFiles/est_n0.dir/build

misc/CMakeFiles/est_n0.dir/clean:
	cd /home/sh/Downloads/hackrf/codec2/build_linux/misc && $(CMAKE_COMMAND) -P CMakeFiles/est_n0.dir/cmake_clean.cmake
.PHONY : misc/CMakeFiles/est_n0.dir/clean

misc/CMakeFiles/est_n0.dir/depend:
	cd /home/sh/Downloads/hackrf/codec2/build_linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sh/Downloads/hackrf/codec2 /home/sh/Downloads/hackrf/codec2/misc /home/sh/Downloads/hackrf/codec2/build_linux /home/sh/Downloads/hackrf/codec2/build_linux/misc /home/sh/Downloads/hackrf/codec2/build_linux/misc/CMakeFiles/est_n0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : misc/CMakeFiles/est_n0.dir/depend
