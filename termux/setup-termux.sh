pkg update -y
pkg upgrade -y
# Install termux functionality
pkg install tur-repo x11-repo -y
# install dev tools
pkg install emacs code-server git openjdk-17 nodejs -y
# Install the desktop display
pkg install tigervnc xfce4-session firefox -y
# other
pkg install proot-distro termux-api yarn

cp start-vnc.sh ~/
cp clear-vnc.sh ~/
