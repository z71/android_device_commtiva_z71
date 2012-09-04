# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

$(call inherit-product, device/commtiva/z71/z71.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=z71 \
BUILD_ID=IMM76D \
BUILD_FINGERPRINT=google/soju/crespo:4.0.4/IMM76D/299849:user/release-keys \
PRIVATE_BUILD_DESC="soju-user 4.0.4 IMM76D 299849 release-keys" 

PRODUCT_NAME := cm_z71
PRODUCT_BRAND := commtiva
PRODUCT_DEVICE := z71
PRODUCT_RELEASE_NAME := z71
PRODUCT_MANUFACTURER := Foxconn
PRODUCT_CHARACTERISTICS := phone
