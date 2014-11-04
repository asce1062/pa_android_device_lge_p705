include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/p705/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := p705
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

TARGET_PREBUILT_KERNEL := device/lge/p705/kernel

TARGET_KERNEL_SOURCE := kernel/lge/msm7x27a-common

TARGET_KERNEL_CONFIG := cyanogenmod_u0_nonfc_defconfig

#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.8-sm

TARGET_RECOVERY_FSTAB := device/lge/p705/recovery.fstab

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p705/recovery/graphics.c

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p705/bluetooth

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
USE_SET_METADATA := false
SKIP_SET_METADATA := true
DISABLE_OTA := true
RECOVERY_CANT_USE_CONFIG_EXT4_FS_XATTR := true

PRODUCT_LOCALES := en_US en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ \
    pl_PL ja_JP zh_TW zh_CN zh_HK ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR \
    pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hr_HR hu_HU in_ID iw_IL \
    lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR sw_TZ \
    ms_MY af_ZA zu_ZA en_XA ar_XB fr_CA mn_MN hy_AM az_AZ ka_GE

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.dexopt-flags=v=a,o=v,m=y,u=y

# trebuchet
PRODUCT_PACKAGES += \
    Trebuchet

## Webkit
PRODUCT_PACKAGES += \
    libwebcore	

# (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_ARCH_LOWMEM := true
JS_ENGINE	:= v8
HTTP	:= chrome
WITH_JIT	:= true
ENABLE_JSC_JIT	:= true
TARGET_WEBKIT_USE_MORE_MEMORY	:= true
TARGET_FORCE_CPU_UPLOAD	:= true

#Try to force baseband display!
TARGET_USES_JELLYBEAN_BASEBAND := true
