#!/system/bin/sh


if [ -f /system/jeju-repartition ];then


  echo Already repartitioned
  reboot

else

  unmount /cache
  mount /dev/block/mmcblk0p1 /sdcard
  chmod 755 sfdisk
  ./sfdisk /dev/block/mmcblk0 < new_mmcblk0_table.txt
   cat > /system/jeju-repartition
   reboot
   
fi
