# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product, vendor/huawei/daytona-common/daytona-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/daytona-common/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#MM_CORE
PRODUCT_PACKAGES += libmm-omxcore
PRODUCT_PACKAGES += libOmxCore
PRODUCT_PACKAGES += libOmxAacEnc
PRODUCT_PACKAGES += libOmxAmrEnc
PRODUCT_PACKAGES += libOmxEvrcEnc
PRODUCT_PACKAGES += libOmxQcelp13Enc

#MM_VIDEO
#PRODUCT_PACKAGES += ast-mm-vdec-omx-test
PRODUCT_PACKAGES += libdivxdrmdecrypt
PRODUCT_PACKAGES += liblasic
PRODUCT_PACKAGES += libOmxVdec
PRODUCT_PACKAGES += libOmxVenc
PRODUCT_PACKAGES += libOpenMAXAL
PRODUCT_PACKAGES += libOpenSLES
PRODUCT_PACKAGES += libOmxVidEnc
PRODUCT_PACKAGES += mm-vdec-omx-property-mgr
#PRODUCT_PACKAGES += mm-vdec-omx-test
#PRODUCT_PACKAGES += mm-venc-omx-test
#PRODUCT_PACKAGES += mm-venc-omx-test720p
#PRODUCT_PACKAGES += mm-video-driver-test
PRODUCT_PACKAGES += libdashplayer
PRODUCT_PACKAGES += qcmediaplayer


# Graphics
PRODUCT_PACKAGES += copybit.msm7x27a
PRODUCT_PACKAGES += gralloc.msm7x27a
PRODUCT_PACKAGES += hwcomposer.msm7x27a
PRODUCT_PACKAGES += libmemalloc
PRODUCT_PACKAGES += libstagefrighthw
PRODUCT_PACKAGES += libqdutils
PRODUCT_PACKAGES += liboverlay
PRODUCT_PACKAGES += libexternal
PRODUCT_PACKAGES += libqservice
PRODUCT_PACKAGES += libgenlock

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.usb.default \
    libaudioutils
	
# Bluetooth
PRODUCT_PACKAGES += \
    btmac

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a \
    libloc_api-rpc
	
# Lights	
PRODUCT_PACKAGES += \
    lights.msm7x27a

# NFC
PRODUCT_PACKAGES += \
   libnfc \
   libnfc_jni \
   libnfc_ndev \
   Nfc	\
   Tag

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
	FMRecord \
    libqcomfm_jni \
    qcom.fmradio
   
# Live Wallpapers
PRODUCT_PACKAGES += \
        librs_jni \
		CMWallpapers \
        LiveWallpapers \
        VisualizationWallpapers \
        LiveWallpapersPicker \

#Theme package
PRODUCT_PACKAGES += \
	ThemeManager \
	ThemeChooser \
	com.tmobile.themes \
	Androidian \
	Cyanbread

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
	Stk \
	SpareParts \
	libnl_2 \
    com.android.future.usb.accessory

PRODUCT_COPY_FILES += \
    device/huawei/daytona-common/ramdisk/init.rc:root/init.rc \
    device/huawei/daytona-common/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/huawei/daytona-common/ramdisk/ueventd.rc:root/ueventd.rc \
	device/huawei/daytona-common/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    device/huawei/daytona-common/ramdisk/tp/1191601.img:root/tp/1191601.img
	
PRODUCT_COPY_FILES += \
  $(call find-copy-subdir-files,*,device/huawei/daytona-common/prebuilt/system,system)

# Files needed for recovery image
PRODUCT_COPY_FILES += \
device/huawei/daytona-common/recovery/sbin/charge_recovery:/recovery/root/sbin/charge_recovery \
device/huawei/daytona-common/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
device/huawei/daytona-common/recovery/sbin/rmt_oeminfo_recovery:/recovery/root/sbin/rmt_oeminfo_recovery \
device/huawei/daytona-common/recovery/sbin/linker:/recovery/root/sbin/linker \
device/huawei/daytona-common/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \

PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_PROPERTY_OVERRIDES+= dalvik.vm.execution-mode=int:jit \
dalvik.vm.dexopt-flags=v=a,o=v,m=y,u=y \
dalvik.vm.checkjni=0 \
dalvik.vm.debug.alloc=0 \



$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_G510
PRODUCT_DEVICE := G510
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_MODEL := G510
PRODUCT_BOARD := U8951
PRODUCT_BRAND := Ascend