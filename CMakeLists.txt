cmake_minimum_required(VERSION 3.23.2)
project(app)

IF(NOT CMAKE_SYSTEM_NAME STREQUAL "Linux")
	MESSAGE(FATAL_ERROR "NOT A LINUX SYSTEM")
ENDIF()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")


ADD_SUBDIRECTORY(${CMAKE_CURRENT_LIST_DIR}/test2)
ADD_SUBDIRECTORY(${CMAKE_CURRENT_LIST_DIR}/test3)
