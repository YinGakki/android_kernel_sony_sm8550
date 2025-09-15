#!/bin/bash
# 克隆 KernelSU 源码
git clone https://github.com/tiann/KernelSU.git --depth=1 -b main KernelSU
# 应用 KernelSU 补丁（适配当前内核）
cd KernelSU
./scripts/merge_kernel.sh ../
cd ..
# 配置 KernelSU（可选：自定义参数）
echo "CONFIG_KSU=y" >> arch/arm64/configs/lineageos_pdx234_defconfig
echo "CONFIG_KSU_MODULE_SIGNATURE=y" >> arch/arm64/configs/lineageos_pdx234_defconfig
