# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_SOURCE_DIR = /home/lucas/Documents/Workspace/prime-gen/prime-gen-client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build

# Include any dependencies generated for this target.
include CMakeFiles/prime_gen_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/prime_gen_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/prime_gen_client.dir/flags.make

CMakeFiles/prime_gen_client.dir/src/main.c.o: CMakeFiles/prime_gen_client.dir/flags.make
CMakeFiles/prime_gen_client.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/prime_gen_client.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/prime_gen_client.dir/src/main.c.o   -c /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/main.c

CMakeFiles/prime_gen_client.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/prime_gen_client.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/main.c > CMakeFiles/prime_gen_client.dir/src/main.c.i

CMakeFiles/prime_gen_client.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/prime_gen_client.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/main.c -o CMakeFiles/prime_gen_client.dir/src/main.c.s

CMakeFiles/prime_gen_client.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/prime_gen_client.dir/src/main.c.o.requires

CMakeFiles/prime_gen_client.dir/src/main.c.o.provides: CMakeFiles/prime_gen_client.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/prime_gen_client.dir/build.make CMakeFiles/prime_gen_client.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/prime_gen_client.dir/src/main.c.o.provides

CMakeFiles/prime_gen_client.dir/src/main.c.o.provides.build: CMakeFiles/prime_gen_client.dir/src/main.c.o


CMakeFiles/prime_gen_client.dir/src/client.c.o: CMakeFiles/prime_gen_client.dir/flags.make
CMakeFiles/prime_gen_client.dir/src/client.c.o: ../src/client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/prime_gen_client.dir/src/client.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/prime_gen_client.dir/src/client.c.o   -c /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/client.c

CMakeFiles/prime_gen_client.dir/src/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/prime_gen_client.dir/src/client.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/client.c > CMakeFiles/prime_gen_client.dir/src/client.c.i

CMakeFiles/prime_gen_client.dir/src/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/prime_gen_client.dir/src/client.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/client.c -o CMakeFiles/prime_gen_client.dir/src/client.c.s

CMakeFiles/prime_gen_client.dir/src/client.c.o.requires:

.PHONY : CMakeFiles/prime_gen_client.dir/src/client.c.o.requires

CMakeFiles/prime_gen_client.dir/src/client.c.o.provides: CMakeFiles/prime_gen_client.dir/src/client.c.o.requires
	$(MAKE) -f CMakeFiles/prime_gen_client.dir/build.make CMakeFiles/prime_gen_client.dir/src/client.c.o.provides.build
.PHONY : CMakeFiles/prime_gen_client.dir/src/client.c.o.provides

CMakeFiles/prime_gen_client.dir/src/client.c.o.provides.build: CMakeFiles/prime_gen_client.dir/src/client.c.o


CMakeFiles/prime_gen_client.dir/src/calculator.c.o: CMakeFiles/prime_gen_client.dir/flags.make
CMakeFiles/prime_gen_client.dir/src/calculator.c.o: ../src/calculator.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/prime_gen_client.dir/src/calculator.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/prime_gen_client.dir/src/calculator.c.o   -c /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/calculator.c

CMakeFiles/prime_gen_client.dir/src/calculator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/prime_gen_client.dir/src/calculator.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/calculator.c > CMakeFiles/prime_gen_client.dir/src/calculator.c.i

CMakeFiles/prime_gen_client.dir/src/calculator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/prime_gen_client.dir/src/calculator.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/src/calculator.c -o CMakeFiles/prime_gen_client.dir/src/calculator.c.s

CMakeFiles/prime_gen_client.dir/src/calculator.c.o.requires:

.PHONY : CMakeFiles/prime_gen_client.dir/src/calculator.c.o.requires

CMakeFiles/prime_gen_client.dir/src/calculator.c.o.provides: CMakeFiles/prime_gen_client.dir/src/calculator.c.o.requires
	$(MAKE) -f CMakeFiles/prime_gen_client.dir/build.make CMakeFiles/prime_gen_client.dir/src/calculator.c.o.provides.build
.PHONY : CMakeFiles/prime_gen_client.dir/src/calculator.c.o.provides

CMakeFiles/prime_gen_client.dir/src/calculator.c.o.provides.build: CMakeFiles/prime_gen_client.dir/src/calculator.c.o


# Object files for target prime_gen_client
prime_gen_client_OBJECTS = \
"CMakeFiles/prime_gen_client.dir/src/main.c.o" \
"CMakeFiles/prime_gen_client.dir/src/client.c.o" \
"CMakeFiles/prime_gen_client.dir/src/calculator.c.o"

# External object files for target prime_gen_client
prime_gen_client_EXTERNAL_OBJECTS =

prime_gen_client: CMakeFiles/prime_gen_client.dir/src/main.c.o
prime_gen_client: CMakeFiles/prime_gen_client.dir/src/client.c.o
prime_gen_client: CMakeFiles/prime_gen_client.dir/src/calculator.c.o
prime_gen_client: CMakeFiles/prime_gen_client.dir/build.make
prime_gen_client: CMakeFiles/prime_gen_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable prime_gen_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prime_gen_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/prime_gen_client.dir/build: prime_gen_client

.PHONY : CMakeFiles/prime_gen_client.dir/build

CMakeFiles/prime_gen_client.dir/requires: CMakeFiles/prime_gen_client.dir/src/main.c.o.requires
CMakeFiles/prime_gen_client.dir/requires: CMakeFiles/prime_gen_client.dir/src/client.c.o.requires
CMakeFiles/prime_gen_client.dir/requires: CMakeFiles/prime_gen_client.dir/src/calculator.c.o.requires

.PHONY : CMakeFiles/prime_gen_client.dir/requires

CMakeFiles/prime_gen_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/prime_gen_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/prime_gen_client.dir/clean

CMakeFiles/prime_gen_client.dir/depend:
	cd /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lucas/Documents/Workspace/prime-gen/prime-gen-client /home/lucas/Documents/Workspace/prime-gen/prime-gen-client /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build /home/lucas/Documents/Workspace/prime-gen/prime-gen-client/build/CMakeFiles/prime_gen_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/prime_gen_client.dir/depend

