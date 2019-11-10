#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:17101728:cd7417b88e6fab0fef42a998e88e8364da0968d6; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9300896:5bc7fcb28b699d877bbb31cf3561ed50b6aaad71 EMMC:/dev/block/platform/bootdevice/by-name/recovery cd7417b88e6fab0fef42a998e88e8364da0968d6 17101728 5bc7fcb28b699d877bbb31cf3561ed50b6aaad71:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
