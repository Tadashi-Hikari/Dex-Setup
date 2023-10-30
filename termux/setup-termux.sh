

pkg update -y
pkg upgrade -y
# Install essential functionality
pkg install tur-repo x11-repo -y
# install dev tools
pkg install emacs git openjdk-17 -y
# Install the desktop display
pkg install tigervnc xfce4-session firefox -y
