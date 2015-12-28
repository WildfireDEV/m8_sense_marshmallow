#!/bin/bash
#
# The script that I use to sync unmerged changes from CM Review for my CM13 builds
# To use, simply just run the script before compiling
#

if [ ! -d /kernel_output_flar2 ]; then
    cd ../kernel_output_flar2
    rm -rf *
    cd ~
    cd m8_m
    cp arch/arm/boot/zImage ../kernel_output_flar2/zImage
    find . -name "*.ko" -exec cp {} ../kernel_output_flar2 \;
else
    mkdir ../kernel_output_flar2
    cp arch/arm/boot/zImage ../kernel_output_flar2/zImage
    find . -name "*.ko" -exec cp {} ../kernel_output_flar2 \;
fi
