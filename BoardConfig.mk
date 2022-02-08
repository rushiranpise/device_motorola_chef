#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from motorola sdm660-common
-include device/motorola/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/chef

# Assertions
TARGET_OTA_ASSERT_DEVICE := chef

# Display
TARGET_SCREEN_DENSITY := 420

# FM
BOARD_HAVE_QCOM_FM := true
BOARD_HAS_QCA_FM_SOC := "cherokee"

# Kernel
TARGET_KERNEL_CONFIG := lineageos_chef_defconfig
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/c0c4000.sdhci

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864

# Retrofit dynamic partitions
BOARD_SUPER_PARTITION_GROUPS := moto_dynamic_partitions
BOARD_MOTO_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 3904897024
BOARD_SUPER_PARTITION_SIZE := 3909091328
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system vendor
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2684354560
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 536870912

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# inherit from the proprietary version
-include vendor/motorola/chef/BoardConfigVendor.mk
