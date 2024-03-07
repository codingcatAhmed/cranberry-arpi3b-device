
# Platform
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true

TARGET_BOARD_PLATFORM := bcm2710

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Enable linker namespaces (required for full Treble)
BOARD_VNDK_VERSION := current

# VINTF manifest and compatabilty matrix
DEVICE_MANIFEST_FILE := device/rpiorg/rpi3/manifest.xml
DEVICE_MATRIX_FILE   := device/rpiorg/rpi3/compatibility_matrix.xml

# Select Binder protocol v8 whcih supports both 32 and 64 bit
### TARGET_USES_64_BIT_BINDER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/rpiorg/rpi3/bluetooth
BOARD_CUSTOM_BT_CONFIG := device/rpiorg/rpi3/bluetooth/vnd_rpi3.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Graphics
TARGET_USES_HWC2 := true

# VC4 GPU configuration:
BOARD_GPU_DRIVERS := vc4
BOARD_USES_DRM_GRALLOC := true
USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true

# Memory
MALLOC_SVELTE := true

# Partition sizes
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 1024
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28991029248 # 256M
BOARD_VENDORIMAGE_PARTITION_SIZE := 268435456 # 256M
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456 # 256M
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_VENDORIMAGE := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Don't create sparse images so that we can dd them to an SDcard
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# SELinux
BOARD_SEPOLICY_DIRS += device/rpiorg/rpi3/sepolicy

# Wifi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WPA_SUPPLICANT_VERSION := VER_0_8_X

