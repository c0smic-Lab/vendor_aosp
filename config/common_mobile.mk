# Inherit common mobile stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Google Apps
WITH_GMS ?= true
ifeq ($(WITH_GMS),true)
$(call inherit-product, vendor/gms/products/gms.mk)
else
PRODUCT_PACKAGES += \
    LatinIME
endif

# Media
PRODUCT_SYSTEM_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
