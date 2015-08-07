cmake_minimum_required(VERSION 3.2)
project(prime_gen_server)

find_package(Threads REQUIRED)

include_directories(comm)
include_directories(include)
set(SOURCE_FILES
	src/main.c
	src/server.c
	src/client.c
	src/scheduler.c)
set(HEADER_FILES
	include/server.h
	include/client.h
	include/scheduler.h)
set(COMM_FILES
	comm/reply.h
	comm/request.h)

add_executable(prime_gen_server ${SOURCE_FILES} ${HEADER_FILES} ${COMM_FILES})

target_link_libraries(prime_gen_server ${CMAKE_THREAD_LIBS_INIT})