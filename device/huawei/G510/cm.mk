## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/G510/device_g510.mk)



-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_G510
PRODUCT_DEVICE := G510
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_BRAND := Ascend
PRODUCT_MODEL := G510

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410
