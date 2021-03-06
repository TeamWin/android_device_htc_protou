USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/protou/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := protou
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x03200000
BOARD_KERNEL_PAGESIZE := 2048

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/htc/protou/kernel

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/f_mass_storage/lun0/file

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC := device/htc/protou/recovery/init.recovery.rc
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/protou/recovery/graphics.c
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true


