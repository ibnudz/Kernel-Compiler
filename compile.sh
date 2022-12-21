#!/bin/bash

# Copyright (C) 2022 a Ibnubert

# Warning !! Dont Change anything there without known reason.
cd ${KERNEL_ROOTDIR}
make -j$(nproc) O=out ARCH=arm64 SUBARCH=arm64 ${DEVICE_DEFCONFIG}
make -j$(nproc) ARCH=arm64 O=out \
	CC=${CLANG_ROOTDIR}/bin/clang \
	AR=${CLANG_ROOTDIR}/bin/llvm-ar \
    	NM=${CLANG_ROOTDIR}/bin/llvm-nm \
    	OBJCOPY=${CLANG_ROOTDIR}/bin/llvm-objcopy \
    	OBJDUMP=${CLANG_ROOTDIR}/bin/llvm-objdump \
    	STRIP=${CLANG_ROOTDIR}/bin/llvm-strip \
	CROSS_COMPILE=${CLANG_ROOTDIR}/bin/aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=${CLANG_ROOTDIR}/bin/arm-linux-gnueabi-
