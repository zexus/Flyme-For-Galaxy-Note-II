#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc/by-name/RECOVERY:7708672:a997385c0bbfbd2caa8ce0dfc2649508ee102810; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/dw_mmc/by-name/BOOT:6944768:fbcf21d6a7414974048bb7987e1b99700b4a0d89 EMMC:/dev/block/platform/dw_mmc/by-name/RECOVERY a997385c0bbfbd2caa8ce0dfc2649508ee102810 7708672 fbcf21d6a7414974048bb7987e1b99700b4a0d89:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
