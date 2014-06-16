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

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, build/target/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/commtiva/z71/overlay

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    hwprops \
    abtfilt \
    gps.z71 \
    lights.z71 \
    copybit.msm7k \
    gralloc.z71 \
    libOmxCore

# Extra apps
PRODUCT_PACKAGES += \
	Torch

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/commtiva/z71/rootdir/root/ueventd.qct.rc:root/ueventd.qct.rc \
    device/commtiva/z71/rootdir/root/init.qcom.rc:root/init.qcom.rc

## RIL-related stuff
PRODUCT_COPY_FILES += \
    device/commtiva/z71/rootdir/system/etc/spn-conf.xml:system/etc/spn-conf.xml

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

## Atheros AR6002 firmware
PRODUCT_COPY_FILES += \
    device/commtiva/z71/rootdir/system/etc/firmware/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \
    device/commtiva/z71/rootdir/system/etc/firmware/eeprom.bin:system/etc/firmware/eeprom.bin \
    device/commtiva/z71/rootdir/system/etc/firmware/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \
    device/commtiva/z71/rootdir/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \

## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/commtiva/z71/rootdir/system/bin/init.qcom.bt.sh:system/bin/init.qcom.bt.sh \
    device/commtiva/z71/rootdir/system/etc/ms3c_charger_offset.cfg:system/etc/ms3c_charger_offset.cfg \
    device/commtiva/z71/rootdir/system/etc/ms3c_transformation.cfg:system/etc/ms3c_transformation.cfg \
    device/commtiva/z71/rootdir/system/app/SensorCalibration.apk:system/app/SensorCalibration.apk \
    device/commtiva/z71/rootdir/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/commtiva/z71/rootdir/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \


PRODUCT_COPY_FILES += \
    device/commtiva/z71/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/commtiva/z71/rootdir/system/etc/hcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/commtiva/z71/rootdir/system/etc/vold.fstab:system/etc/vold.fstab \
    device/commtiva/z71/rootdir/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/commtiva/z71/rootdir/system/usr/keylayout/7x27_kybd.kl:system/usr/keylayout/7x27_kybd.kl

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/commtiva/z71/z71-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := z71
PRODUCT_DEVICE := z71
PRODUCT_MODEL := Commtiva Z71