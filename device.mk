#
# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#$(call inherit-product, vendor/bluefox/nx1/nx1-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# API
# set to 30 because ro.board.first_api_level=30
PRODUCT_SHIPPING_API_LEVEL := 30

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1168
TARGET_SCREEN_WIDTH := 540
    
# fstab
PRODUCT_PACKAGES += \
    fstab.enableswap \
    fstab.mt6768 \

# rc  
PRODUCT_PACKAGES += \
    init.mt6768.rc \
    ueventd.mtk.rc \

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/android.hardware.media.c2@1.2-mediatek-seccomp-policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-mediatek-seccomp-policy
