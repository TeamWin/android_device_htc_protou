$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/protou/protou-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/protou/overlay

LOCAL_PATH := device/htc/protou
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/protou/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# HTC blobs for recovery

PRODUCT_COPY_FILES += \
    device/htc/protou/recovery/init.protou.rc:recovery/root/init.protou.rc \
    device/htc/protou/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/protou/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/protou/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/protou/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/protou/recovery/sbin/rmt_storage:recovery/root/sbin/rmt_storage \
    device/htc/protou/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_protou
PRODUCT_DEVICE := protou
