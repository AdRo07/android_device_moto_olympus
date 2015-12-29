ANDROID_COMMON_BUILD_MK := true
LOCAL_PATH := device/moto/olympus
TARGET_SPECIFIC_HEADER_PATH += device/moto/olympus/include
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := cortex-a9
## TEMPORARY HACK: skip building external/chromium_org/
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_NO_BOOTLOADER := true

#use set_metadata on old recovery
USE_SET_METADATA := false


#CPU sets
NEED_WORKAROUND_CORTEX_A9_745320 := true
ARCH_ARM_HAVE_NEON := false
TARGET_ARCH_LOWMEM := true

#LP hacks
BLOCK_BASED_OTA := false
TARGET_NEEDS_NON_PIE_SUPPORT := true
SMALLER_FONT_FOOTPRINT := true
TARGET_USES_LOGD := false

#kernel
HAVE_SELINUX := false
#TARGET_KERNEL_SOURCE := kernel/moto/olympus
#TARGET_KERNEL_CONFIG := tegra_olympus_defconfig
BOARD_KERNEL_BASE := 0x00000000
#0x00000800 = 2048
BOARD_KERNEL_PAGESIZE :=  2048
KERNEL_SRC:= 
BOARD_KERNEL_CMDLINE := 

#Applying Fengyr's Ramdisk and kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/zImage


BOARD_EGL_CFG := device/moto/olympus/egl.cfg


TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := olympus


USE_OPENGL_RENDERER := true

TARGET_BOARD_INFO_FILE := device/moto/olympus/board-info.txt




TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8355840
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 81922
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 407772160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB = device/moto/olympus/fstab.olympus


### from wulsic p990 device

# Various
TARGET_USE_PIPE := true
TARGET_USE_OS := true

# Testing
BOARD_MALLOC_ALIGNMENT := 16

TARGET_EXTRA_CFLAGS := $(call cc-option,-mtune=cortex-a9) $(call cc-option,-mcpu=cortex-a9)

#define to use all of the Linaro Cortex-A9 optimized string funcs,
#instead of subset known to work on all machines
USE_ALL_OPTIMIZED_STRING_FUNCS := true


# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

### end
-include vendor/moto/olympus/BoardConfigVendor.mk
