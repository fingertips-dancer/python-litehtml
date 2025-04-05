# Install script for directory: E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/litehtmlpy")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/Debug/gumbo.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/Release/gumbo.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/MinSizeRel/gumbo.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/RelWithDebInfo/gumbo.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gumbo" TYPE FILE FILES
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/attribute.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/char_ref.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/error.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/insertion_mode.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/parser.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/string_buffer.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/string_piece.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tag_enum.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tag_gperf.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tag_sizes.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tag_strings.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/token_type.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tokenizer.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/tokenizer_states.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/utf8.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/util.h"
    "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/include/gumbo/vector.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo/gumboConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo/gumboConfig.cmake"
         "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo/gumboConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo/gumboConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gumbo" TYPE FILE FILES "E:/study/My-GitHub-Project/QHtmlWidget/python-litehtml-build/litehtml/src/gumbo/CMakeFiles/Export/df09b600d79ede856025bf0d0b984a6e/gumboConfig-release.cmake")
  endif()
endif()

