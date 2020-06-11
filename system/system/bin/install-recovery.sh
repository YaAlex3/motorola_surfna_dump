#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50331648:b235523c05896e7f2948c2f49a75b75e4052619e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:33554432:73fa53a23e19b44fa3bb4ada56d041fd26f53444 EMMC:/dev/block/bootdevice/by-name/recovery b235523c05896e7f2948c2f49a75b75e4052619e 50331648 73fa53a23e19b44fa3bb4ada56d041fd26f53444:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
