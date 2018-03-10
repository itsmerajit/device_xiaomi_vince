#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from vince device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vince
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_vince

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := vince

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=xiaomi/vince/vince:7.1.2/N2G47H/V9.2.3.0.NEGCNEK:user/release-keys \
    PRIVATE_BUILD_DESC="vince-user 7.1.2 N2G47H V9.2.3.0.NEGCNEK release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model
