# Inherit common stuff
$(call inherit-product, vendor/aosp/config/common_mobile.mk)

PRODUCT_SIZE := full

# Apps
PRODUCT_PACKAGES += \
    Camelot

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd
