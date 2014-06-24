# Bootanimation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit z71 device
$(call inherit-product, device/commtiva/z71/z71.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

PRODUCT_NAME := cm_z71
PRODUCT_BRAND := commtiva
PRODUCT_DEVICE := z71
PRODUCT_RELEASE_NAME := z71
PRODUCT_MANUFACTURER := Foxconn
PRODUCT_MODEL := Commtiva Z71
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := CommtivaZ71
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
