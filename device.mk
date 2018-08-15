#
# Copyright (C) 2018 The Android Open-Source Project
# Copyright (C) 2018 Team OpenKirin
# Copyright (C) 2018 Huawei-Kirin-Project
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

# Inherit from Huawei common
$(call inherit-product, device/huawei/common/device-common.mk)

# Device Path
DEVICE_PATH := device/huawei/phone

# Phone specific overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay
    
# Huawei Camera2
 PRODUCT_PACKAGES += \
     HwCamera2    
        
# LCD
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
ro.sf.lcd_density=480

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    libnfc-nci \
    Tag \
    com.android.nfc_extras
        
# NFC Config
PRODUCT_COPY_FILES += \
  $(DEVICE_PATH)/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
  $(DEVICE_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf
  
# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
