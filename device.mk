#
# Copyright (C) 2023-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/miuicamera-miatoll

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/miuicamera-miatoll/miuicamera-miatoll-vendor.mk)

# Shims
PRODUCT_PACKAGES += \
    libgui_shim_miuicamera

# Priv-app permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-mimoji.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mimoji.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-miuiextraphoto.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuiextraphoto.xml

# Sysconfig — hidden API whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt

# Dexpreopt speed
PRODUCT_DEXPREOPT_SPEED_APPS += MIUICamera

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
