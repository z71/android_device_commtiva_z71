# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/commtiva/z71/z71.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z71
PRODUCT_NAME := cm_z71
PRODUCT_BRAND := commtiva
PRODUCT_MODEL := Commtiva Z71
PRODUCT_MANUFACTURER := Commtiva

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=commtiva_z71 BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/commtiva_z71/z71:4.0.4/Olivier$(BUILD_ID)/0.1:user/test-keys PRIVATE_BUILD_DESC="Olivier"
