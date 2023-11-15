curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o lein
chmod a+x lein

curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
chmod +x linux-install.sh
termux-fix-shebang linux-install.sh
# install it to the local user directory
./linux-install.sh -p ~/.local/bin
rm linux-install


cd ~/
git clone https://github.com/Tadashi-Hikari/Navi
cd Navi
echo "Setup complete. Thank you for installing the Navi prototype on Linux!"
