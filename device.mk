## This device is the Commtiva Z1, and all its variants, which include:
# Optimus Boston
# Orange Boston
# Gigabyte Gsmart G1305
# Motorola XT502
# Apanda A60
# Vibo A688
# Chinavision Excalibur
# Muchtel A1
# Wellcom A88
# Cincinnati Bell Blaze
# Spice Mi-300
# Nexian A-890 Journey
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
DEVICE_PACKAGE_OVERLAYS += device/commtiva/z71/overlay

PRODUCT_LOCALES += mdpi

## Graphics
PRODUCT_PACKAGES := \
        gralloc.msm7x27 \
        copybit.z71 \
        libQcomUI

# OMX
PRODUCT_PACKAGES += \
        libmm-omxcore \
        libOmxCore \
        libstagefrighthw \
        libopencorehw

# Camera
PRODUCT_PACKAGES += \
        libcamera \
        camera.msm7x27

# GPS
PRODUCT_PACKAGES += \
        gps.z71 \
        librpc 
        
# Z71 specific
PRODUCT_PACKAGES += \
        lights.z71 \
        sensors.z71 

# Audio
PRODUCT_PACKAGES += \
        audio.primary.z71 \
        audio_policy.z71 \
        audio.a2dp.default \
        libaudioutils

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Other
PRODUCT_PACKAGES += \
        dexpreopt

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += send_bug

PRODUCT_COPY_FILES += \
         system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
         system/extras/bugmailer/send_bug:system/bin/send_bug
endif

DISABLE_DEXPREOPT := false

PRODUCT_TAGS += dalvik.gc.type-precise

# Board-specific init
PRODUCT_COPY_FILES += \
    device/commtiva/z71/ueventd.qct.rc:root/ueventd.qct.rc \
    device/commtiva/z71/init.usb.rc:root/init.usb.rc \
    device/commtiva/z71/init.qcom.rc:root/init.qcom.rc

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

##  AR6000 firmware
PRODUCT_COPY_FILES += \
    device/commtiva/z71/prebuilt/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \
    device/commtiva/z71/prebuilt/eeprom.bin:system/etc/firmware/eeprom.bin \
    device/commtiva/z71/prebuilt/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \
    device/commtiva/z71/hostapd.conf:system/etc/wifi/hostapd.conf \

## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/commtiva/z71/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh \
    device/commtiva/z71/ms3c_charger_offset.cfg:system/etc/ms3c_charger_offset.cfg \
    device/commtiva/z71/ms3c_transformation.cfg:system/etc/ms3c_transformation.cfg \
    device/commtiva/z71/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/commtiva/z71/AudioFilter.csv:system/etc/AudioFilter.csv \

PRODUCT_COPY_FILES += \
    device/commtiva/z71/media_profiles.xml:system/etc/media_profiles.xml \
    device/commtiva/z71/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/commtiva/z71/vold.fstab:system/etc/vold.fstab \
    device/commtiva/z71/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/commtiva/z71/prebuilt/bi8232-keypad.idc:system/usr/idc/bi8232-keypad.idc \
    device/commtiva/z71/7x27_kybd.kl:system/usr/keylayout/7x27_kybd.kl \
    device/commtiva/z71/prebuilt/bi8232-keypad.kl:system/usr/keylayout/bi8232-keypad.kl

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product-if-exists, vendor/commtiva/z71/z71-vendor.mk)
