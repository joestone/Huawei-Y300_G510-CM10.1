# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8951/u8951.mk)

# Correct boot animation size for the screen.
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8951
PRODUCT_NAME := cm_u8951
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Ascend G510
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_RELEASE_NAME := u8951

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8951 BUILD_ID=GRJ90 BUILD_FINGERPRINT=Huawei/G510-0100/hwG510-0100:4.1.1/HuaweiG510-0100/C00B175:user/ota-rel-keys,release-keys PRIVATE_BUILD_DESC="G510-0100-user 4.1.1 GRJ90 C00B175 release-keys"
