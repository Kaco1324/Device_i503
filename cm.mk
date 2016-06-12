## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := scx35_sp7731gea_hd

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sprd/scx35_sp7731gea_hd/device_i503.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := scx35_sp7731gea_hd
PRODUCT_NAME := cm_i503
PRODUCT_BRAND := Nomi
PRODUCT_MODEL := i503
PRODUCT_MANUFACTURER := Nomi
