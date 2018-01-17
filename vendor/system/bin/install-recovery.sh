#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8347648 57258ff8c2f3760cc0bb24946effdb0fd8e2d4b5 5249024 f81d74e02b09b5e929be67e0396620d90a5c8ec2
fi
if ! applypatch -c EMMC:/dev/block/mmcblk0p9:8347648:57258ff8c2f3760cc0bb24946effdb0fd8e2d4b5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:5249024:f81d74e02b09b5e929be67e0396620d90a5c8ec2 EMMC:/dev/block/mmcblk0p9 57258ff8c2f3760cc0bb24946effdb0fd8e2d4b5 8347648 f81d74e02b09b5e929be67e0396620d90a5c8ec2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
