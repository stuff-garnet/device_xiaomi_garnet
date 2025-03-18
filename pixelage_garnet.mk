#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SUPPORTS_OMX_SERVICE := false
TARGET_BOOT_ANIMATION_RES := 1080
PIXELAGE_MAINTAINER := kleidione

# Inherit some common pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_NAME := pixelage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="garnet_global-user 15 AQ3A.240912.001 OS2.0.2.0.VNRMIXM release-keys" \
    BuildFingerprint=Redmi/garnet_global/garnet:15/AQ3A.240912.001/OS2.0.2.0.VNRMIXM:user/release-keys \
    DeviceName=garnet \
    DeviceProduct=garnet_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
