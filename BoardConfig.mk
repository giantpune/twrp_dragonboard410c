#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/qcom/msm8916_64

TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := msm8916

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
#BOARD_KERNEL_BASE := 0x80000000
#BOARD_RAMDISK_OFFSET := 0x01000000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
# TARGET_KERNEL_SOURCE := kernel/motorola/msm8916
# TARGET_KERNEL_CONFIG := msm8916-mini_defconfig

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-


BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1288491008
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5368709120
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)


RECOVERY_SDCARD_ON_DATA := true

# don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# TWRP
TW_THEME := landscape_hdpi
#TW_TARGET_USES_QCOM_BSP := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_INCLUDE_CRYPTO := true
#TW_SCREEN_BLANK_ON_BOOT := true

#TW_NEW_ION_HEAP := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file






#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#





#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100
#BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
#TARGET_KERNEL_SOURCE := kernel/motorola/msm8916
#TARGET_KERNEL_CONFIG := msm8916-mini_defconfig


#TARGET_KERNEL_SOURCE := kernel/qcom/msm8916
#TARGET_KERNEL_CONFIG := msm_defconfig

# build bitches about this, but who cares?  qcom open sourced it.  i jsut dont wanna build it over and over
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel




BOARD_USES_QCOM_HARDWARE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_RECOVERY_FSTAB := device/qcom/msm8916_64/twrp.fstab



TARGET_USES_CSVT := true


BOARD_KERNEL_SEPARATED_DT := true

BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk


































