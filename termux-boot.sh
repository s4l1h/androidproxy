#!/data/data/com.termux/files/usr/bin/sh
echo "Needs termux-boot addon otherwise it doesn't works"
export BOOTDIR=$HOME/.termux/boot
export ANDROIDPROXYDIR=$HOME/androidproxy
echo "Create Termux-Boot Directory"
mkdir -p $BOOTDIR
echo "Creating Smylinks for boot"
ln -s $ANDROIDPROXYDIR/boot/start-sshd $BOOTDIR/start-sshd
ln -s $ANDROIDPROXYDIR/boot/start-proxy $BOOTDIR/start-proxy
ln -s $ANDROIDPROXYDIR/boot/start-frpc $BOOTDIR/start-frpc
