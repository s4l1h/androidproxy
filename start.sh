#!/data/data/com.termux/files/usr/bin/sh
export BOOTDIR=$HOME/androidproxy/boot
echo "Start Services"
$BOOTDIR/start-sshd &
$BOOTDIR/start-proxy &
$BOOTDIR/start-frpc &