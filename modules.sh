#!/bin/bash
#
# The script that I use to sync unmerged changes from CM Review for my CM13 builds
# To use, simply just run the script before compiling
#

mkdir ../kernel_output_flar2
cp arch/arm/boot/zImage ../kernel_output_flar2/zImage
find . -name "*.ko" -exec cp {} ../kernel_output_flar2 \;
