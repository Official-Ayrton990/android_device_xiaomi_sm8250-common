#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.common@2.0-util \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    libhdmiedid \
    libhfp \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix \
    libtinycompress \
    libtinycompress.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_qrc.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration-audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

PRODUCT_PACKAGES += \
    fstab.qcom

# Recovery ramdisk
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

