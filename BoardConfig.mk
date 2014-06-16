USE_CAMERA_STUB	:= false

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS     := true
BOARD_USES_QCOM_LIBRPC   := true
BOARD_HAVE_BLUETOOTH     := true

WIFI_DRIVER_MODULE_NAME     :=	ar6000
WIFI_DRIVER_MODULE_PATH     :=	rfkill
BOARD_WPA_SUPPLICANT_DRIVER :=  WEXT


TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7x27
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := z71

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_OTA_ASSERT_DEVICE := z71

## Kernel
TARGET_KERNEL_SOURCE := kernel/commtiva/z71
TARGET_KERNEL_CONFIG := fxx_defconfig
BOARD_KERNEL_CMDLINE := mem=210M console=null androidboot.hardware=qcom no_console_suspend
BOARD_KERNEL_BASE    := 0x12e00000
BOARD_PAGE_SIZE      := 0x00000800

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

BOARD_NO_RGBX_8888 := true

#BOARD_GPS_LIBRARIES := libloc_api

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

TARGET_USES_OLD_LIBSENSORS_HAL := true
TARGET_HAS_FOXCONN_SENSORS := true

# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := z71
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

TARGET_SPECIFIC_HEADER_PATH := device/commtiva/z71/include
