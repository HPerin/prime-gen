cmake_minimum_required(VERSION 3.3)
project(prime_gen_client)

include_directories(comm)
include_directories(include)
set(SOURCE_FILES
	src/main.c
	src/client.c
	src/calculator.c)
set(HEADER_FILES
	include/client.h
	include/calculator.h)
set(COMM_FILES
	comm/reply.h
	comm/request.h)

add_executable(prime_gen_client ${SOURCE_FILES} ${HEADER_FILES} ${COMM_FILES})