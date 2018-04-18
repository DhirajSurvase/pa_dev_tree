#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from msm8916-common
$(call inherit-product, device/lenovo/msm8916-common/msm8916.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
#    $(LOCAL_PATH)/overlay-lineage

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

$(call inherit-product, vendor/lenovo/a6000/a6000-vendor.mk)

include device/qcom/common/common.mk

# Enforced RRO targets
PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res
