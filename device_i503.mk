$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sprd/scx35_sp7731gea_hd/sprd/scx35_sp7731gea_hd-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sprd/scx35_sp7731gea_hd0/overlay

LOCAL_PATH := device/sprd/scx35_sp7731gea_hd

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# sprd telephony
PRODUCT_PACKAGES += \
	Dialer \
	Mms

# graphics modules
PRODUCT_PACKAGES += \
	libGLES_mali.so \
	libboost.so \
	mali.ko

# default audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler

# sprd HAL modules
PRODUCT_PACKAGES += \
	audio.primary.sc8830 \
	audio_policy.sc8830 \
	camera.sc8830 \
	camera2.sc8830 \
	lights.sc8830

# HWC
PRODUCT_PACKAGES += \
	gralloc.sc8830 \
	hwcomposer.sc8830 \
	sprd_gsp.sc8830 \
	libion

# Codecs
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libstagefright_sprd_soft_mpeg4dec \
	libstagefright_sprd_soft_h264dec \
	libstagefright_sprd_mpeg4dec \
	libstagefright_sprd_mpeg4enc \
	libstagefright_sprd_h264dec \
	libstagefright_sprd_h264enc \
	libstagefright_sprd_vpxdec \
	libstagefright_sprd_aacdec \
	libstagefright_sprd_mp3dec \
	libomx_aacdec_sprd.so \
	libomx_avcdec_hw_sprd.so \
	libomx_avcdec_sw_sprd.so \
	libomx_avcenc_hw_sprd.so \
	libomx_m4vh263dec_hw_sprd.so \
	libomx_m4vh263dec_sw_sprd.so \
	libomx_m4vh263enc_hw_sprd.so \
	libomx_mp3dec_sprd.so \
	libomx_vpxdec_hw_sprd.so
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 \
    $(LOCAL_PATH)/rootdir/init.board.rc:root/init.board.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.board.rc:root/init.recovery.board.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.rc:root/init.sc8830.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
    $(LOCAL_PATH)/rootdir/init.storage.rc:root/init.storage.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/tiny_hw.xml:system/etc/tiny_hw.xml \
    $(LOCAL_PATH)/audio/codec_pga.xml:system/etc/codec_pga.xml \
    $(LOCAL_PATH)/audio/audio_hw.xml:system/etc/audio_hw.xml \
    $(LOCAL_PATH)/audio/audio_para:system/etc/audio_para \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/focaltech_ts.idc:system/usr/idc/focaltech_ts.idc \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/headset-keyboard.kl:system/usr/keylayout/headset-keyboard.kl \
    $(LOCAL_PATH)/configs/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl \
    $(LOCAL_PATH)/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    vendor/sprd/open-source/libs/mali/egl.cfg:system/lib/egl/egl.cfg
    
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_AAPT_CONFIG := hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_scx35_sp7731gea_hd
PRODUCT_DEVICE := scx35_sp7731gea_hd
