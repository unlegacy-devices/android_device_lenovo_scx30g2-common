# Copyright (C) 2017 The Lineage Project
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

LOCAL_PATH := $(call my-dir)

# Inherit from scx35-common device configuration
$(call inherit-product, device/lenovo/scx35-common/common.mk)

# Inherit scx30g2-common vendor tree
$(call inherit-product-if-exists, vendor/lenovo/scx30g2-common/scx30g2-common-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
	audio_hw.xml \
	audio_para \
	audio_effects_vendor.conf \
	audio_policy.conf \
	codec_pga.xml \
	tiny_hw.xml

# Bluetooth
PRODUCT_PACKAGES += \
	bt_vendor.conf

# WiFi
PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf \
	nvram_net.txt

# Rootdir
PRODUCT_PACKAGES += \
	fstab.sc8830
