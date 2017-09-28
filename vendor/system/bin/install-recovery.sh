#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6907904 5ab0954f09128c3a20a106db350553b4368bde80 4536320 e2952b2b804dfe656037f596a61ba16c6ede1b03
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p9:6907904:5ab0954f09128c3a20a106db350553b4368bde80; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:4536320:e2952b2b804dfe656037f596a61ba16c6ede1b03 EMMC:/dev/block/mmcblk0p9 5ab0954f09128c3a20a106db350553b4368bde80 6907904 e2952b2b804dfe656037f596a61ba16c6ede1b03:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
