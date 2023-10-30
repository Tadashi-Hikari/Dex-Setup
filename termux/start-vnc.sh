export DISPLAY=":1"
rm -rf ~/../usr/tmp/*
rm -rf ~/../usr/tmp/.*
vncserver -localhost
# $! should get the last process id
echo $! >> vnc-pid
xfce4-session &
