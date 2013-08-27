#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include vendor/huawei/daytona-common/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := G510,U8951,u8951,Y300,U8833,u8833

TARGET_SPECIFIC_HEADER_PATH := device/huawei/daytona-common/include
TARGET_PROVIDES_INIT_RC := true

# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Kernel 
TARGET_KERNEL_SOURCE := kernel/huawei/g510/cmkernel
TARGET_KERNEL_CONFIG := g510_jb2_defconfig
TARGET_BOOTLOADER_BOARD_NAME := u8951
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_SPECIFIC_HEADER_PATH := device/huawei/daytona-common/include

# Graphics
BOARD_EGL_CFG := device/huawei/daytona-common/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=65 -DQCOM_LEGACY_OMX -DQCOM_ICS_DECODER -DANCIENT_GL
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_QCOM_BSP := true

BOARD_WANTS_EMMC_BOOT := true

# Video
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Wi-Fi
BOARD_WLAN_DEVICE                := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME          := "ar6000"
WIFI_EXT_MODULE_PATH             := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME             := "cfg80211"
WIFI_TEST_INTERFACE              := "sta"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/daytona-common/ril/
BOARD_PROVIDES_LIBRIL :=true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8951/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/huawei/u8951/bluetooth/vnd_u8951.txt

# Camera
USE_CAMERA_STUB := false
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Dalvik
#TARGET_ARCH_LOWMEM := true

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Web Rendering
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USE_QCOM_LLVM_CLANG_RS := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/huawei/daytona-common/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/huawei/daytona-common/recovery/etc/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/daytona-common/recovery/recovery-keys.c
DEVICE_RESOLUTION := 480x800
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/daytona-common/recovery/graphics.c

# USB
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Partitions
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552
BOARD_FLASH_BLOCK_SIZE := 131072