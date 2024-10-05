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

# Inherit from chenfeng device
$(call inherit-product, device/xiaomi/chenfeng/device.mk)

PRODUCT_DEVICE := chenfeng
PRODUCT_NAME := omni_chenfeng
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24053PY09I
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="chenfeng_global-user 14 UKQ1.240116.001 V816.0.6.0.UNJINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/chenfeng_global/chenfeng:14/UKQ1.240116.001/V816.0.6.0.UNJINXM:user/release-keys
