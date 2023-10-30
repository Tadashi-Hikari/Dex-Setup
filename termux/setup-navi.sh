curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o lein
termux-fix-shebang lein
chmod a+x lein
mv lein ~/../usr/bin/

curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
chmod +x linux-install.sh
termux-fix-shebang linux-install.sh
# modify it for termux path
./linux-install.sh -p ~/../usr
rm linux-install


cd ~/
git clone https://github.com/Tadashi-Hikari/Navi
cd Navi
echo "Setup complete. Thank you for installing the Navi prototype on Termux!"
