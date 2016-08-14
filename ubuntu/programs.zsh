#!/bin/zsh

# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt-get install google-chrome-beta

# skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install skype -y --force-yes

# xchat irc
sudo apt-get install xchat-gnome xchat-gnome-indicator -y

# gimp
sudo apt-get install gimp -y

# inkscape
sudo apt-get install inkscape -y

# vlc
sudo apt-get install vlc browser-plugin-vlc -y

# screen-casting
sudo apt-get install gtk-recordmydesktop
