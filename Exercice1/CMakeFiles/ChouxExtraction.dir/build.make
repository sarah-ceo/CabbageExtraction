# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/user/Documents/evaluation/Exercice1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Documents/evaluation/Exercice1

# Include any dependencies generated for this target.
include CMakeFiles/ChouxExtraction.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ChouxExtraction.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChouxExtraction.dir/flags.make

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o: CMakeFiles/ChouxExtraction.dir/flags.make
CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o: ChouxExtraction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Documents/evaluation/Exercice1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o -c /home/user/Documents/evaluation/Exercice1/ChouxExtraction.cpp

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/Documents/evaluation/Exercice1/ChouxExtraction.cpp > CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.i

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/Documents/evaluation/Exercice1/ChouxExtraction.cpp -o CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.s

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.requires:

.PHONY : CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.requires

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.provides: CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.requires
	$(MAKE) -f CMakeFiles/ChouxExtraction.dir/build.make CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.provides.build
.PHONY : CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.provides

CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.provides.build: CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o


# Object files for target ChouxExtraction
ChouxExtraction_OBJECTS = \
"CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o"

# External object files for target ChouxExtraction
ChouxExtraction_EXTERNAL_OBJECTS =

ChouxExtraction: CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o
ChouxExtraction: CMakeFiles/ChouxExtraction.dir/build.make
ChouxExtraction: /usr/local/lib/libopencv_dnn.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_gapi.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_highgui.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_ml.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_objdetect.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_photo.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_stitching.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_video.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_videoio.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_imgcodecs.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_calib3d.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_features2d.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_flann.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_imgproc.so.4.5.0
ChouxExtraction: /usr/local/lib/libopencv_core.so.4.5.0
ChouxExtraction: CMakeFiles/ChouxExtraction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Documents/evaluation/Exercice1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ChouxExtraction"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChouxExtraction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChouxExtraction.dir/build: ChouxExtraction

.PHONY : CMakeFiles/ChouxExtraction.dir/build

CMakeFiles/ChouxExtraction.dir/requires: CMakeFiles/ChouxExtraction.dir/ChouxExtraction.cpp.o.requires

.PHONY : CMakeFiles/ChouxExtraction.dir/requires

CMakeFiles/ChouxExtraction.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChouxExtraction.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChouxExtraction.dir/clean

CMakeFiles/ChouxExtraction.dir/depend:
	cd /home/user/Documents/evaluation/Exercice1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Documents/evaluation/Exercice1 /home/user/Documents/evaluation/Exercice1 /home/user/Documents/evaluation/Exercice1 /home/user/Documents/evaluation/Exercice1 /home/user/Documents/evaluation/Exercice1/CMakeFiles/ChouxExtraction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ChouxExtraction.dir/depend

