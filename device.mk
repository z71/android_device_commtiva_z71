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

# Z71 vendor
$(call inherit-product-if-exists, vendor/commtiva/z71/z71-vendor.mk)

# Device-specific overlay
DEVICE_PACKAGE_OVERLAYS += device/commtiva/z71/overlay

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Display
PRODUCT_PACKAGES += \
    gralloc.msm7x27 \
    hwcomposer.msm7x27 \
    copybit.msm7x27
   
# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libmm-omxcore \
    libstagefrighthw

# Camera
PRODUCT_PACKAGES += \
    LegacyCamera \
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

# Other
PRODUCT_PACKAGES += \
        dexpreopt \
        setup_fs \
        make_ext4fs

PRODUCT_TAGS += dalvik.gc.type-precise

# Board-specific init
PRODUCT_COPY_FILES += \
    device/commtiva/z71/root/ueventd.qct.rc:root/ueventd.qct.rc \
    device/commtiva/z71/root/init.usb.rc:root/init.usb.rc \
    device/commtiva/z71/root/init.qcom.rc:root/init.qcom.rc

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distict.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

##  AR6000 firmware
PRODUCT_COPY_FILES += \
    device/commtiva/z71/prebuilt/etc/data.patch.hw2_0.bin:system/etc/firmware/data.patch.hw2_0.bin \
    device/commtiva/z71/prebuilt/etc/eeprom.bin:system/etc/firmware/eeprom.bin \
    device/commtiva/z71/prebuilt/etc/athwlan.bin.z77:system/etc/firmware/athwlan.bin.z77 \
    device/commtiva/z71/prebuilt/etc/hostapd.conf:system/etc/wifi/hostapd.conf

## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/commtiva/z71/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh \
    device/commtiva/z71/prebuilt/etc/ms3c_charger_offset.cfg:system/etc/ms3c_charger_offset.cfg \
    device/commtiva/z71/prebuilt/etc/ms3c_transformation.cfg:system/etc/ms3c_transformation.cfg \
    device/commtiva/z71/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/commtiva/z71/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/commtiva/z71/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/commtiva/z71/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/commtiva/z71/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf 

PRODUCT_COPY_FILES += \
    device/commtiva/z71/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/commtiva/z71/prebuilt/etc/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/commtiva/z71/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/commtiva/z71/prebuilt/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/commtiva/z71/prebuilt/bi8232-touch.idc:system/usr/idc/bi8232-touch.idc \
    device/commtiva/z71/prebuilt/7x27_kybd.kl:system/usr/keylayout/7x27_kybd.kl \
    device/commtiva/z71/prebuilt/bi8232-touch.kl:system/usr/keylayout/bi8232-touch.kl