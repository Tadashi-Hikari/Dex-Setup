apt update -y ;
apt -o DPkg::Options::="--force-confnew" -y full-upgrade ;
# Install termux functionality
pkg install tur-repo x11-repo -y ;
# Install the desktop display
pkg install tigervnc xfce4-session firefox -y ;
# install dev tools
pkg install emacs code-server openjdk-17 nodejs-lts -y ;
# other
pkg install proot-distro termux-api yarn -y ; 

cp start-vnc.sh ~/
cp clear-vnc.sh ~/
