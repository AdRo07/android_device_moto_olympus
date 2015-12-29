
#TODO After Boot, Copy other files
LOCAL_PATH := device/moto/olympus
PRODUCT_COPY_FILES := \
    ${LOCAL_PATH}/init.olympus.rc:root/init.olympus.rc \
    ${LOCAL_PATH}/init.olympus.usb.rc:root/init.olympus.usb.rc \
    ${LOCAL_PATH}/ueventd.olympus.rc:root/ueventd.olympus.rc \
	system/core/rootdir/init.trace.rc:root/init.trace.rc \
	${LOCAL_PATH}/fstab.olympus:root/fstab.olympus \
	device/moto/olympus/scripts/pds_perm_fix.sh:system/bin/pds_perm_fix.sh \
	device/moto/olympus/scripts/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    ${LOCAL_PATH}/kernel:root/kernel 

#Keyboard and Keylayout for olympus
PRODUCT_COPY_FILES += \
    ${LOCAL_PATH}/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    ${LOCAL_PATH}/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl:system/usr/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl \
    ${LOCAL_PATH}/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    ${LOCAL_PATH}/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    ${LOCAL_PATH}/keylayout/qtouch-obp-ts.kl:system/usr/keylayout/qtouch-obp-ts.kl \
    ${LOCAL_PATH}/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    ${LOCAL_PATH}/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    ${LOCAL_PATH}/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \


PRODUCT_COPY_FILES += \
    ${LOCAL_PATH}/keychars/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \
    ${LOCAL_PATH}/keychars/evfwd.kcm.bin:system/usr/keychars/evfwd.kcm.bin \
    ${LOCAL_PATH}/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/Motorola_Bluetooth_Wireless_Keyboard.kcm.bin \
    ${LOCAL_PATH}/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml


#Device Modules

#fs tools
PRODUCT_PACKAGES += make_ext4fs \
			e2fsck \
 			setup_fs

#bluetooth
PRODUCT_PACKAGES += l2ping \
			hciconfig \
			hcitool \
			libnetcmdiface

#Audio
PRODUCT_PACKAGES += DockAudio \
			audio.usb.default \
			audio.a2dp.default



PRODUCT_PACKAGES += com.android.future.usb.accessory \
			mot_boot_mode \
			OlympusParts


PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	persist.sys.ui.hw=true \
	ro.sf.lcd_density=240
