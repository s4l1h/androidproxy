#!/data/data/com.termux/files/usr/bin/sh
echo "Install Dependencies"
pkg upgrade
#pkg install git
pkg install openssh
pkg install golang

export ANDROIDPROXYDIR=$HOME/androidproxy

echo "Build FRPC"
cd $ANDROIDPROXYDIR/frp
go build -o $ANDROIDPROXYDIR/bin/frpc ./cmd/frpc
echo "Build Proxy Binary"
cd $ANDROIDPROXYDIR/proxy
go build -o $ANDROIDPROXYDIR/bin/proxy ./
cd $ANDROIDPROXYDIR
echo "Copy public key"
# curl http://akmsoftware.co.uk/armproxy/id_rsa.pub -o $ANDROIDPROXYDIR/id_rsa.pub
#cp id_rsa.pub $HOME/.ssh/authorized_keys
# Set Permissions to the file
# chmod 600 $HOME/.ssh/authorized_keys
# Make sure the folder .ssh folder has the correct permissions
chmod 700 $HOME/.ssh
chmod 755 -R $ANDROIDPROXYDIR/boot
chmod 755 -R $ANDROIDPROXYDIR/*

echo "Done"
echo "Now you can run start.sh for starting services"