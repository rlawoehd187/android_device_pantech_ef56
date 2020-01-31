#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017-2018 The LineageOS Projec
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef56 device
$(call inherit-product, device/pantech/ef56/ef56.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef56/ef56-vendor.mk)

PRODUCT_NAME := lineage_ef56
PRODUCT_DEVICE := ef56
PRODUCT_MANUFACTURER := Pantech
PRODUCT_MODEL := Vega LTE-A
PRODUCT_BRAND := Vega

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef56
TARGET_VENDOR_DEVICE_NAME := ef56

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L IM-A880S.018 release-keys" 

BUILD_FINGERPRINT := VEGA/VEGA_IM-A880S/EF56S:4.4.2/KVT49L/IM-A880S.018:user/release-keys
