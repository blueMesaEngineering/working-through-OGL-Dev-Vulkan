#!/bin/bash

CC=g++
# CPPFLAGS="I../Include -ggdb3"
CPPFLAGS="-I/home/nik/vulkanSDK/1.4.350.1/x86_64/include -I/usr/include/GLFW -ggdb3"
LDFFLAGS=`pkg-config --libs glfw3`
LDFLAGS="$LDFLAGS"

$CC tutorial01.cpp $CPPFLAGS $LDFLAGS -o tutorial01

# g++ tutorial01.cpp -I/home/nik/vulkanSDK/1.4.350.1/x86_64/include -I/usr/include -ggdb3 `pkg-config --libs glfw3` -o tutorial01