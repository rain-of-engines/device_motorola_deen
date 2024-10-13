#
# Copyright (C) 2021 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, vendor/lineage/config/aosp_audio.mk)
$(call inherit-product, vendor/lineage/config/lineage_audio.mk)

# Use ih8sn
$(call inherit-product-if-exists, ih8sn/product.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device Identifiers
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := deen
PRODUCT_MANUFACTURER := Motorola
PRODUCT_NAME := lineage_deen
PRODUCT_MODEL := Motorola One

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=deen \
    PRIVATE_BUILD_DESC="deen-user 10 QPKS30.54-22-27 92b8a release-keys"

BUILD_FINGERPRINT := motorola/deen/deen_sprout:10/QPKS30.54-22-27/92b8a:user/release-keys
