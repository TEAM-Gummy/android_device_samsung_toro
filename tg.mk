# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/Gummy/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toro/aosp_toro.mk)

# Enhanced NFC
$(call inherit-product, vendor/Gummy/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toro
PRODUCT_NAME := tg_toro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.3 JWR66V 737497 release-keys"
