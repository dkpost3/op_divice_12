
LOCAL_PATH := device/oneplus/avicii

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-twrp

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi


# define hardware platform
PRODUCT_PLATFORM := lito

#TEST
# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier


AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl-recovery \
    bootctrl.lito \
    bootctrl.lito.recovery \
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nci.conf:$(TARGET_COPY_OUT_PRODUCT)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_HOST_PACKAGES += \
    libandroidicu

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# tri-state-key
PRODUCT_PACKAGES += \
    KeyHandler \
    tri-state-key-calibrate

PRODUCT_SHIPPING_API_LEVEL := 29

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.oneplus

# Inherit from oneplus sm7250-common
$(call inherit-product, device/oneplus/sm7250-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/oneplus/avicii/avicii-vendor.mk)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
