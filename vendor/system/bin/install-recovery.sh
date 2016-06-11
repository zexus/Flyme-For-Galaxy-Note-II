#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6664192 969f06ff3422bec720bd20b67712481d41e30310 4386816 48f3c4eccdd86dfa676535466b8c08963a5c26a6
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p9:6664192:969f06ff3422bec720bd20b67712481d41e30310; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p8:4386816:48f3c4eccdd86dfa676535466b8c08963a5c26a6 EMMC:/dev/block/mmcblk0p9 969f06ff3422bec720bd20b67712481d41e30310 6664192 48f3c4eccdd86dfa676535466b8c08963a5c26a6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
