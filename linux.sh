#!/usr/bin/env bash

./clean.sh

CXX=${CXX:=g++}
AR=${AR:=ar}

${CXX} -c guid.cpp -o guid.o -Wall -std=c++11 -DGUID_LIBUUID
${AR} rv libcrossguid.a guid.o
