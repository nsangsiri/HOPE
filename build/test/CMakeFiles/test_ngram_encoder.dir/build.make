# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /data/d0/y21/nsangsiri1/spack/opt/spack/linux-ubuntu18.04-cascadelake/gcc-10.3.0/cmake-3.23.2-2v7mfemtapfiwlelhgtowiaugq7m75km/bin/cmake

# The command to remove a file.
RM = /data/d0/y21/nsangsiri1/spack/opt/spack/linux-ubuntu18.04-cascadelake/gcc-10.3.0/cmake-3.23.2-2v7mfemtapfiwlelhgtowiaugq7m75km/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /uac/y21/nsangsiri1/summer2022_project/HOPE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /uac/y21/nsangsiri1/summer2022_project/HOPE/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test_ngram_encoder.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_ngram_encoder.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_ngram_encoder.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_ngram_encoder.dir/flags.make

test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o: test/CMakeFiles/test_ngram_encoder.dir/flags.make
test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o: ../test/test_ngram_encoder.cpp
test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o: test/CMakeFiles/test_ngram_encoder.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/uac/y21/nsangsiri1/summer2022_project/HOPE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o"
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test && /usr/bin/g++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o -MF CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o.d -o CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o -c /uac/y21/nsangsiri1/summer2022_project/HOPE/test/test_ngram_encoder.cpp

test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.i"
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test && /usr/bin/g++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /uac/y21/nsangsiri1/summer2022_project/HOPE/test/test_ngram_encoder.cpp > CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.i

test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.s"
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test && /usr/bin/g++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /uac/y21/nsangsiri1/summer2022_project/HOPE/test/test_ngram_encoder.cpp -o CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.s

# Object files for target test_ngram_encoder
test_ngram_encoder_OBJECTS = \
"CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o"

# External object files for target test_ngram_encoder
test_ngram_encoder_EXTERNAL_OBJECTS =

test/test_ngram_encoder: test/CMakeFiles/test_ngram_encoder.dir/test_ngram_encoder.cpp.o
test/test_ngram_encoder: test/CMakeFiles/test_ngram_encoder.dir/build.make
test/test_ngram_encoder: test/CMakeFiles/test_ngram_encoder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/uac/y21/nsangsiri1/summer2022_project/HOPE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_ngram_encoder"
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_ngram_encoder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_ngram_encoder.dir/build: test/test_ngram_encoder
.PHONY : test/CMakeFiles/test_ngram_encoder.dir/build

test/CMakeFiles/test_ngram_encoder.dir/clean:
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_ngram_encoder.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_ngram_encoder.dir/clean

test/CMakeFiles/test_ngram_encoder.dir/depend:
	cd /uac/y21/nsangsiri1/summer2022_project/HOPE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /uac/y21/nsangsiri1/summer2022_project/HOPE /uac/y21/nsangsiri1/summer2022_project/HOPE/test /uac/y21/nsangsiri1/summer2022_project/HOPE/build /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test /uac/y21/nsangsiri1/summer2022_project/HOPE/build/test/CMakeFiles/test_ngram_encoder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_ngram_encoder.dir/depend

