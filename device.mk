#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#TODO what is this?
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p_mr1.mk)

#TODO: get perseus-vendor.mk
# Get non-open-source specific aspects
#$(call inherit-product-if-exists, vendor/xiaomi/perseus/perseus-vendor.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

#TODO add overlays 
# Overlays
#DEVICE_PACKAGE_OVERLAYS += \
#   $(LOCAL_PATH)/overlay \
#   $(LOCAL_PATH)/overlay-lineage


# Properties
-include $(LOCAL_PATH)/device-props.mk


# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sdm845-common
$(call inherit-product, device/xiaomi/sdm845-common/sdm845.mk)


