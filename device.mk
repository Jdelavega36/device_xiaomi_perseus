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

#TODO SEarch for this
# Device fstab
PRODUCT_PACKAGES += \
    fstab.qcom

#TODO Search for this
# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:system/usr/idc/uinput-goodix.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:system/usr/keylayout/uinput-goodix.kl

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    NQNfcNci \
    SecureElement \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# PocketMode
PRODUCT_PACKAGES += \
    XiaomiPocketMode

