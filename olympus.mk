
#TODO After Boot, Copy other files
BAD := device/moto/olympus
PRODUCT_COPY_FILES := \
    ${BAD}/init.olympus.rc:root/init.olympus.rc \
    ${BAD}/init.olympus.usb.rc:root/init.olympus.usb.rc \
    ${BAD}/ueventd.olympus.rc:root/ueventd.olympus.rc \
	system/core/rootdir/init.trace.rc:root/init.trace.rc \
	${BAD}/fstab.olympus:root/fstab.olympus \
	device/moto/olympus/scripts/pds_perm_fix.sh:system/bin/pds_perm_fix.sh \
	device/moto/olympus/scripts/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    ${BAD}/kernel:root/kernel 

#Keyboard and Keylayout for olympus
PRODUCT_COPY_FILES += \
    ${BAD}/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    ${BAD}/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl:system/usr/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl \
    ${BAD}/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    ${BAD}/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    ${BAD}/keylayout/qtouch-obp-ts.kl:system/usr/keylayout/qtouch-obp-ts.kl \
    ${BAD}/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    ${BAD}/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    ${BAD}/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \


PRODUCT_COPY_FILES += \
    ${BAD}/keychars/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \
    ${BAD}/keychars/evfwd.kcm.bin:system/usr/keychars/evfwd.kcm.bin \
    ${BAD}/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/Motorola_Bluetooth_Wireless_Keyboard.kcm.bin \
    ${BAD}/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \

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
