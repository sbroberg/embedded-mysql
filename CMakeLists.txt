cmake_minimum_required(VERSION 3.3)

project(Demo)

set(TARGET_NAME Demo)

add_executable(${TARGET_NAME} test2_libmysqld.cpp)

target_include_directories(${TARGET_NAME}
  PRIVATE /usr/local/include/mysql
  )

add_definitions(-g)

find_library(LIBMYSQLD NAMES libmysqld.a)
find_library(LIBSSL NAMES libssl.a PATHS /Users/stebro/test/openssl/openssl)
find_library(LIBCRYPTO NAMES libcrypto.a PATHS /Users/stebro/test/openssl/openssl)

# target_include_directories(${TARGET_NAME} PUBLIC ${LIBMYSQLD_INCLUDE_DIRS})
target_link_libraries(${TARGET_NAME}
  ${LIBMYSQLD}
  ${LIBSSL}
  ${LIBCRYPTO}
  )
