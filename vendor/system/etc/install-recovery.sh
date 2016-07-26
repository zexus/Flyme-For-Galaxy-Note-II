#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p9:5191680:9062f0f125717efdfc7b85c10f8eba0feaaf1fb6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:4575232:b625cfa10caee343a203239f7c2964060f4457eb EMMC:/dev/block/mmcblk0p9 9062f0f125717efdfc7b85c10f8eba0feaaf1fb6 5191680 b625cfa10caee343a203239f7c2964060f4457eb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
