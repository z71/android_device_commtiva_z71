# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/commtiva/z71/z71.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z71
PRODUCT_NAME := cm_z71
PRODUCT_BRAND := commtiva
PRODUCT_MODEL := z71
PRODUCT_MANUFACTURER := Commtiva
PRODUCT_CHARACTERISTICS := phone
