#
# Copyright (C) 2018 CarbonRom
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/huawei/phone/device.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Device Path
DEVICE_PATH := device/huawei/phone

# Tablet specific overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay-carbon   
    
# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# CarbonRom Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Rcstar6696"
    
# Device identifier
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Huawei
PRODUCT_PLATFORM := Kirin
PRODUCT_NAME := carbon_huawei_phone
PRODUCT_DEVICE := phone
PRODUCT_MODEL := CarbonRom on Huawei Phones



