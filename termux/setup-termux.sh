apt update -y ;
apt -o DPkg::Options::="--force-confnew" -y full-upgrade;
# Install termux functionality
pkg install tur-repo x11-repo -y;
# Install the desktop display
pkg install tigervnc xfce4 xfce4-goodies firefox -y;
# install dev tools
pkg install emacs-x code-server openjdk-17 nodejs-lts -y;
# other
pkg install proot-distro termux-api yarn vlc -y; 

cp start-vnc.sh ~/;
cp clear-vnc.sh ~/;

#maybe move this in to link-storage.sh
termux-setup-storage;
./link-storage.sh;
./setup-navi.sh;
cd xfce4; ./setup-xfce4.sh;
