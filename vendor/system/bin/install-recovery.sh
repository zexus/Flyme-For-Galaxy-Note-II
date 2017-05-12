#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6989824 40ee475f4a41b09458d576e2aff721335df9904a 4585472 0b13067a79088030729eff53c570a7f7eb02f00d
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p9:6989824:40ee475f4a41b09458d576e2aff721335df9904a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:4585472:0b13067a79088030729eff53c570a7f7eb02f00d EMMC:/dev/block/mmcblk0p9 40ee475f4a41b09458d576e2aff721335df9904a 6989824 0b13067a79088030729eff53c570a7f7eb02f00d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
