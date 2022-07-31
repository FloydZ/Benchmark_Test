cmake_minimum_required(VERSION 3.13)
project(BenchmarkTest)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_VERBOSE_MAKEFILE ON)


# include directories
include_directories(".")


set(DEBUG_FLAGS "-g -DDEBUG -march=native -fopenmp")
#set(OPTIMIZE_FLAGS "-march=native -O3 -flto -f-")
set(OPTIMIZE_FLAGS "-march=native -O3 -flto -DNDEBUG -fopenmp")

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    # if using GCC
    set(DEBUG_FLAGS "${DEBUG_FLAGS} ${GCC_HELPER_FLAGS} -O0 ")
endif()

# Set additionally our own debug/optimisation compiler/linkage flags. Maybe not he nicest way, but by far the easiest.
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} ${DEBUG_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} ${DEBUG_FLAGS}")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} ${OPTIMIZE_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${OPTIMIZE_FLAGS}")

add_executable(mptest mptest.c)
target_link_libraries(mptest -fopenmp)

add_executable(mptestload mptestload.c)
target_link_libraries(mptestload -fopenmp)
