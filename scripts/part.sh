#!/system/bin/sh

unmount /cache
mount /dev/block/mmcblk0p1 /sdcard
chmod 755 sfdisk
./sfdisk /dev/block/mmcblk0 < new_mmcblk0_table.txt
