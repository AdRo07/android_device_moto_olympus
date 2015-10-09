ANDROID_COMMON_BUILD_MK := true
TARGET_SPECIFIC_HEADER_PATH += device/moto/olympus/include
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := cortex-a9
## TEMPORARY HACK: skip building external/chromium_org/
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_NO_BOOTLOADER := true
TARGET_KERNEL_CONFIG := tegra_olympus_defconfig
BOARD_KERNEL_BASE := 0x00000000
#0x00000800 = 2048
BOARD_KERNEL_PAGESIZE :=  2048
#BOARD_KERNEL_TAGS_OFFSET := We don't need it!
#BOARD_RAMDISK_OFFSET     := We don't have this offset :)

#BOARD_KERNEL_CMDLINE := Shamu! Why you are using long and dirty CMDLINE? olympus doesn't have it

#BOARD_MKBOOTIMG_ARGS := This options too!

BOARD_EGL_CFG := device/moto/olympus/egl.cfg


TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := olympus

#Important! You must add this options
USE_OPENGL_RENDERER := true

TARGET_BOARD_INFO_FILE := device/moto/olympus/board-info.txt



## KB options! No MB or GB  ##
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8355840
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 81922
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 407772160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB = device/moto/olympus/fstab.olympus

-include vendor/moto/olympus/BoardConfigVendor.mk
