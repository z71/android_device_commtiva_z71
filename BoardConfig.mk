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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/commtiva/z71/BoardConfigVendor.mk

# Platform
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := z71
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_SPECIFIC_HEADER_PATH := device/commtiva/z71/include

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/commtiva/z71/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/commtiva/z71/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/commtiva/z71/recovery/recovery.rc

# Kernel
TARGET_KERNEL_SOURCE := kernel/commtiva/z71
TARGET_KERNEL_CONFIG := cyanogen_z71_defconfig
#TARGET_PREBUILT_RECOVERY_KERNEL := device/commtiva/z71/recovery_kernel
BOARD_KERNEL_CMDLINE := mem=210M console=null androidboot.hardware=qcom no_console_suspend
BOARD_KERNEL_BASE := 0x12e00000
BOARD_PAGE_SIZE := 0x00000800

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := rfkill
WIFI_DRIVER_MODULE_NAME     := ar6000

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# GPS
BOARD_GPS_LIBRARIES := libloc
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true

# USB mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_WEBKIT_USE_MORE_MEMORY := true
ENABLE_WEBGL := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ICS_COMPAT -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Graphics
TARGET_USES_GENLOCK := true
BOARD_EGL_CFG := device/commtiva/z71/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
TARGET_FORCE_CPU_UPLOAD := true
TARGET_NO_HW_VSYNC := true

# Use the smoothness hack from burstlam - default enabled
ifndef NO_PB
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DBINDER_COMPAT -DICS_AUDIO_BLOB -DUSES_LEGACY_EGL
endif

# libaudio
#BOARD_USES_GENERIC_AUDIO := false
#TARGET_PROVIDES_LIBAUDIO := true

# Bootanimation Optimization
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := false
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00200000 00020000 "misc"
# mtd2: 00080000 00020000 "splash"
# mtd3: 00500000 00020000 "recovery"
# mtd4: 00500000 00020000 "ftm"
# mtd5: 01a00000 00020000 "hidden"
# mtd6: 00060000 00020000 "dbgmsk"
# mtd7: 0a000000 00020000 "system"
# mtd8: 00200000 00020000 "misc2"
# mtd9: 05800000 00020000 "cache"
# mtd10: 0ab80000 00020000 "userdata"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0ab80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/commtiva/z71/releasetools/ota_from_target_files
