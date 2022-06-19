#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := avicii

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/avicii/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := avicii
PRODUCT_NAME := twrp_avicii
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2001
PRODUCT_MANUFACTURER := OnePlus
CUSTOM_DEVICE := Nord


PRODUCT_SYSTEM_NAME := Nord
PRODUCT_SYSTEM_DEVICE := Nord

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Nord \
    TARGET_PRODUCT=Nord
