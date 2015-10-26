# This file contains CMake snippets that do no worth being in a
# dedicated module.

# Sets a default build type if none has been passed to the commande
# line (e.g cmake -DCMAKE_BUILD_TYPE=Release)
if(CMAKE_GENERATOR MATCHES "Makefiles|Ninja" AND
    NOT CMAKE_BUILD_TYPE OR
    NOT ${CMAKE_BUILD_TYPE} MATCHES "^Debug|RelWithDebInfo|Release$")
  set(BUILD_TYPE RelWithDebInfo)
else()
  set(BUILD_TYPE ${CMAKE_BUILD_TYPE})
endif()
set(CMAKE_BUILD_TYPE ${BUILD_TYPE} CACHE STRING "Type of build. Possible values: Debug; RelWithDebInfo; Release" FORCE)
set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "RelWithDebInfo" "Release")
