# android_device_moto_olympus
Atrix 4G (olympus) CM12.1

#Contacts 

##Hangbokie (Leader)##
sungkisa@naver.com 
##fehead##
im.fehead@gmail.com


# atrix 4g info
'''
 ./split_bootimg.pl boot.img
Page size: 2048 (0x00000800)
Kernel size: 4538564 (0x004540c4)
Ramdisk size: 372068 (0x0005ad64)
Second size: 0 (0x00000000)
Board name:
Command line:
Writing boot.img-kernel ... complete.
Writing boot.img-ramdisk.gz ... complete.

$ unpackbootimg -i boot.img
Android magic found at: 0
BOARD_KERNEL_CMDLINE
BOARD_KERNEL_BASE 10000000
BOARD_RAMDISK_OFFSET 01000000
BOARD_SECOND_OFFSET 00f00000
BOARD_TAGS_OFFSET 00000100
BOARD_PAGE_SIZE 2048
BOARD_SECOND_SIZE 0
BOARD_DT_SIZE 0


 # cm11	fatab.recovery
<src>                          <mnt_point>         <type>    <mnt_flags and options>                                                          <fs_mgr_flags>
  The filesystem that contains the filesystem checker binary (typically /system) cannot
  specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK
  /dev/block/mmcblk0p12           /system             ext4      ro,noatime,nodiratime,barrier=1                                                  wait
  /dev/block/mmcblk0p16           /data               ext4      rw,nosuid,nodev,noatime,nodiratime,barrier=1,noauto_da_alloc                     wait,check,encryptable=footer,length=-1638
  /dev/block/mmcblk0p15           /cache              ext4      rw,nosuid,nodev,noatime,nodiratime,barrier=1,noauto_da_alloc                     wait,check
  /devices/platform/sdhci-tegra.3/mmc_host/mmc0   auto    auto    defaults        voldmanaged=sdcard0:18,noemulatedsd
  /devices/platform/sdhci-tegra.2/mmc_host/mmc2   auto    auto    defaults        voldmanaged=sdcard1:auto,noemulatedsd
  /devices/platform/tegra-ehci.2/usb1/1-1/1-1:1.0 auto    auto    defaults        voldmanaged=usbdisk:auto
  /dev/block/mmcblk0p11           /boot               emmc      defaults                                                                         defaults
  /dev/block/mmcblk0p10           /recovery           emmc      defaults                                                                         defaults
 
 
root@olympus:/ # df
Filesystem               Size     Used     Free   Blksize
/dev                   391.2M     2.1M   389.1M   4096
/sys/fs/cgroup         391.2M     0.0K   391.2M   4096
/mnt/asec              391.2M     0.0K   391.2M   4096
/mnt/obb               391.2M     0.0K   391.2M   4096
/mnt/fuse              391.2M     0.0K   391.2M   4096
/system                  1.0G   441.0M   627.9M   4096
/data                    2.3G     1.2G     1.1G   4096
/cache                 629.9M    10.7M   619.3M   4096
/pds                     1.9M     1.1M   845.0K   1024
/mnt/media_rw/sdcard1    29.8G     4.8G    25.0G   32768
/mnt/secure/asec        10.7G   445.8M    10.3G   4096
/storage/sdcard1        29.8G     4.8G    25.0G   32768
/mnt/media_rw/sdcard0    10.7G   445.8M    10.3G   4096
/mnt/secure/asec        10.7G   445.8M    10.3G   4096
/mnt/media_rw/sdcard1/.android_secure    10.7G   445.8M    10.3G   4096
/storage/sdcard0        10.7G   445.8M    10.3G   4096


# cat /proc/partitions
# major minor  #blocks  name
#   7        0       2048 loop0
# 179        0   15543808 mmcblk0
# 179        1       3584 mmcblk0p1
# 179        2        512 mmcblk0p2
# 179        3       2048 mmcblk0p3
# 179        4          1 mmcblk0p4
# 179        5       1024 mmcblk0p5
# 179        6        512 mmcblk0p6
# 179        7        512 mmcblk0p7
# 179        8       1024 mmcblk0p8
# 179        9       2048 mmcblk0p9
# 179       10       8192 mmcblk0p10    /recovery
# 179       11       8192 mmcblk0p11    /boot
# 179       12    1112064 mmcblk0p12    /system
# 179       13       2048 mmcblk0p13
# 179       14      20480 mmcblk0p14
# 179       15     655360 mmcblk0p15	/cache
# 179       16    2448384 mmcblk0p16    /data
# 179       17       2048 mmcblk0p17
# 179       18   11233792 mmcblk0p18
# 179       64       1024 mmcblk0boot1
# 179       32       1024 mmcblk0boot0
# 179       96   31267840 mmcblk1
# 179       97   31263744 mmcblk1p1


# fdisk -l /dev/block/mmcblk0
1 heads, 16 sectors/track, 1942976 cylinders
Units = cylinders of 16 * 512 = 8192 bytes

              Device Boot      Start         End      Blocks  Id System
/dev/block/mmcblk0p1              65         512        3584  83 Linux
Partition 1 does not end on cylinder boundary
/dev/block/mmcblk0p2             513         576         512  83 Linux
Partition 2 does not end on cylinder boundary
/dev/block/mmcblk0p3             577         832        2048  83 Linux
Partition 3 does not end on cylinder boundary
/dev/block/mmcblk0p4             833     1937856    15496192   5 Extended
Partition 4 does not end on cylinder boundary
/dev/block/mmcblk0p5             897        1024        1024  83 Linux
/dev/block/mmcblk0p6            1025        1088         512  83 Linux
/dev/block/mmcblk0p7            1089        1152         512  83 Linux
/dev/block/mmcblk0p8            1153        1280        1024  83 Linux
/dev/block/mmcblk0p9            1281        1536        2048  83 Linux
/dev/block/mmcblk0p10           1537        2560        8192  83 Linux
/dev/block/mmcblk0p11           2561        3584        8192  83 Linux
/dev/block/mmcblk0p12           3585       44544      327680  83 Linux
/dev/block/mmcblk0p13          44545      142848      786432  83 Linux
/dev/block/mmcblk0p14         142849      145408       20480  83 Linux
/dev/block/mmcblk0p15         145409      227328      655360  83 Linux
/dev/block/mmcblk0p16         227329      489472     2097152  83 Linux
/dev/block/mmcblk0p17         489473      533632      353280  83 Linux
/dev/block/mmcblk0p18         533633     1937856    11233792  83 Linux
root@olympus:/ #
'''
