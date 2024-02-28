#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from r8q device
$(call inherit-product, device/samsung/r8q/device.mk)

PRODUCT_DEVICE := r8q
PRODUCT_NAME := omni_r8q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G781N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r8qksx-user 11 RP1A.200720.012 G781NKSS5GWK2 release-keys"

BUILD_FINGERPRINT := samsung/r8qksx/r8q:11/RP1A.200720.012/G781NKSS5GWK2:user/release-keys
