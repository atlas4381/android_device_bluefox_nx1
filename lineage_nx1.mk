#
# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/bluefox/nx1/device.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit common TWRP configurations
#$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_BRAND := BLUEFOX
PRODUCT_DEVICE := nx1
PRODUCT_MANUFACTURER := BLUEFOX
PRODUCT_MODEL := BLUEFOX NX1
PRODUCT_NAME := lineage_nx1

PRODUCT_GMS_CLIENTID_BASE := android-bluefox
