cmake_minimum_required(VERSION 2.5)
project(prime_gen_client)

find_package(Threads REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)

include_directories(${GTK3_INCLUDE_DIRS})
link_directories(${GTK3_LIBRARY_DIRS})
add_definitions(${GTK3_CFLAGS_OTHER})

include_directories(comm)
include_directories(include)
set(SOURCE_FILES
	src/main.c
	src/client.c
	src/calculator.c
	src/ui.c)
set(HEADER_FILES
	include/client.h
	include/calculator.h
	include/ui.h)
set(COMM_FILES
	comm/reply.h
	comm/request.h)

add_executable(prime_gen_client ${SOURCE_FILES} ${HEADER_FILES} ${COMM_FILES})
target_link_libraries(prime_gen_client ${GTK3_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
