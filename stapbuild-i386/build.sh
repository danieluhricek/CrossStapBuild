#!/bin/sh

BIN="/csb/toolchains/x86-i686--glibc--stable-2018.11-1/bin"
SRC_FILE=$1
KERNEL=$2
OUT_FILE=${SRC_FILE%.*}.ko

echo "Compiling \"${SRC_FILE}\" into \"${OUT_FILE}\""

stap -gv -a i386 -p4 -r $KERNEL -B CROSS_COMPILE=$BIN/i686-linux- -m $OUT_FILE $SRC_FILE
