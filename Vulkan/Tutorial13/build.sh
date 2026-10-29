#!/bin/bash

source ../build.sh

check_vulkan_sdk

CC=g++
CPPFLAGS="-std=c++20 -I../VulkanCore/Include -I../../Include -I../../Include/assimp5 -I/home/nik/vulkanSDK/1.4.350.1/x86_64/include -DVULKAN -ggdb3"
LDFLAGS=`pkg-config --libs glfw3 vulkan`
LDFLAGS="$LDFLAGS -L$VULKAN_SDK/lib -lglslang -lglslang-default-resource-limits -lSPIRV -lOSDependent -lSPVRemapper \
	-lspirv-cross-reflect"

$CC tutorial13.cpp \
    ../VulkanCore/Source/core.cpp \
    ../VulkanCore/Source/spirv_reflect.c \
    ../VulkanCore/Source/util.cpp \
    ../VulkanCore/Source/device.cpp \
    ../VulkanCore/Source/queue.cpp \
    ../VulkanCore/Source/texture.cpp \
    ../VulkanCore/Source/wrapper.cpp \
    ../VulkanCore/Source/shader.cpp \
    ../../Common/ogldev_util.cpp \
    ../../Common/3rdparty/stb_image.cpp \
    ../../Common/ogldev_etc_cubemap.cpp \
    $CPPFLAGS $LDFLAGS -o tutorial13