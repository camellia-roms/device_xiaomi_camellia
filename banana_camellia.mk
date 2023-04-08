#
# Copyright (C) 2023 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# Inherit from camellia device
$(call inherit-product, device/xiaomi/camellia/device.mk)

# Build Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_FACE_UNLOCK_SUPPORTED := true
IS_PHONE := true
GAPPS_VERSION := false
BANANA_BUILD_TYPE := OFFICIAL
BANANA_MAINTAINER := skittels15
TARGET_ENABLE_BLUR := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := banana_camellia
PRODUCT_DEVICE := camellia
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := camellia

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
