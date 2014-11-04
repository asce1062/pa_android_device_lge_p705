# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit device configuration
$(call inherit-product, device/lge/p705/device.mk)

# Release name
PRODUCT_RELEASE_NAME := OptimusL7

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p705
PRODUCT_NAME := pa_p705
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P705
PRODUCT_MANUFACTURER := LGE

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=144808 \
    PRODUCT_NAME=p705 \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="p705-user 4.4.4 KTU84Q 144808 release-keys" \
    BUILD_FINGERPRINT="lge/p705/4.4.4/KTU84Q/144808:user/release-keys"

# trebuchet
PRODUCT_PACKAGES += Trebuchet

# Leds
PRODUCT_PACKAGES += Leds
