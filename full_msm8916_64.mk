#
# Copyright (C) 2015 The Android Open-Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, device/qcom/msm8916_64/device.mk)

PRODUCT_COPY_FILES += device/qcom/msm8916_64/dt.img:dt.img

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8916_64
PRODUCT_NAME := full_msm8916_64
PRODUCT_MANUFACTURER := qualcomm


#PRODUCT_NAME := msm8916_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := MSM8916 for arm64
