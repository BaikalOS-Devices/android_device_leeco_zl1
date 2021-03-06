# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/leeco/zl1/device.mk)

# Inherit some common baikalos stuff.
$(call inherit-product, vendor/baikalos/config/common_full_phone.mk)

PRODUCT_NAME := baikalos_zl1
PRODUCT_DEVICE := zl1
PRODUCT_MANUFACTURER := LeEco
PRODUCT_BRAND := LeEco

# Google client ID.
PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=le_zl1 \
    PRODUCT_NAME=ZL1_CN \
    PRIVATE_BUILD_DESC="le_zl1-user 6.0.1 WEXNAOP5802101261S eng.letv.20170126.120318 release-keys"

BUILD_FINGERPRINT := LeEco/ZL1_NA/le_zl1:6.0.1/WEXNAOP5802101261S/letv01261206:user/release-keys

TARGET_VENDOR := leeco

# BaikalOS Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Andrey S. Shidakov (andr68rus)"
