
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
# Inherit device stuff.
$(call inherit-product, device/moto/olympus/olympus.mk)
PRODUCT_NAME := cm_olympus
PRODUCT_DEVICE := olympus
PRODUCT_BRAND := Android
PRODUCT_MODEL := MB860
PRODUCT_MANUFACTURER := moto
PRODUCT_CHARACTERISTICS := phone
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
$(call inherit-product-if-exists, vendor/moto/olympus/device-vendor.mk)

