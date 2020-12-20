cmake_minimum_required(VERSION 3.13)
project(smallSecretLWE)
set(CMAKE_CXX_STANDARD 17)

include(FetchContent)
include(ExternalProject)

set(CMAKE_VERBOSE_MAKEFILE ON)


ExternalProject_Add(cryptanalysislib_project
        SOURCE_DIR        ${CMAKE_SOURCE_DIR}/deps/cryptanalysislib
        CONFIGURE_COMMAND cd <SOURCE_DIR> && mkdir -p build
        COMMAND           cd <SOURCE_DIR> && cd build/ && cmake ..
        BUILD_COMMAND     cd <SOURCE_DIR> && cd build/ && make -j8
        INSTALL_COMMAND   ""
        TEST_COMMAND      ""
        )

# include directories
include_directories("deps/cryptanalysislib/b63/src")
include_directories("deps/cryptanalysislib/m4ri")
include_directories("deps/cryptanalysislib/src")
include_directories("src")
include_directories("/usr/local/include")

link_directories("deps/cryptanalysislib/build")
link_directories("deps/cryptanalysislib/m4ri/.libs")
link_directories("/usr/local/lib")

# some helper variables
# possible values are: [-DVALUE_KARY, -DVALUE_BINARY]
# the first enables a k-ary implementation of the class 'Value'
# the second sets the class 'Value' on a binary vector
# set(VALUE_FLAG -DVALUE_BINARY)
# set(VALUE_FLAG -DVALUE_KARY)
set(VALUE_FLAG "")

# two possible options. 'tcmalloc' is the standard google malloc implementation
#set(MALLOC_LIBRARY tcmalloc)
set(MALLOC_LIBRARY "")

# sadly we need '-march=native' even in 'DEBUG' mode. Because otherwise the code wouldn't compile.
# for fsized-deallocation see: https://github.com/google/tcmalloc/blob/master/docs/tuning.md
set(DEBUG_FLAGS "-g -DDEBUG -march=native ${VALUE_FLAG}")
#set(OPTIMIZE_FLAGS "-march=native -O3 -flto -fsized-deallocation -fno-builtin-malloc -fno-builtin-free -DNDEBUG ${VALUE_FLAG}")
set(OPTIMIZE_FLAGS "-march=native -O3 -flto -DNDEBUG ${VALUE_FLAG}")
set(SANITIZER_FLAGS -fsanitize=address -fno-omit-frame-pointer)
set(GCC_HELPER_FLAGS -fvar-tracking-assignments)

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    # if using GCC
    set(DEBUG_FLAGS "${DEBUG_FLAGS} ${GCC_HELPER_FLAGS} -O0 ")
endif()

# Set additionally our own debug/optimisation compiler/linkage flags. Maybe not he nicest way, but by far the easiest.
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} ${DEBUG_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} ${DEBUG_FLAGS}")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} ${OPTIMIZE_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${OPTIMIZE_FLAGS}")


# add subdirectories
add_subdirectory(bench)
add_subdirectory(test)
