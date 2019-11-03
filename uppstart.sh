# installera vim
sudo pacman -S vim

# oh my zsh
sudo pacman -S zsh
sudo pacman -S zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# få igång bluetooth
systemctl status bluetooth.service

# skippa felmedelandet för inget wifi

# ta bort packmanwrapern kalu
sudo pacman -Rs kalu
# stäng av varning för att klistra in i terminalen

# fixa klockan genom ntp och falsk hårdvaruklocka

# ranka mirrors
rankmirrors /etc/pacman.d/mirrorlist > mirrors
sudo mv mirrors /etc/pacman.d/mirrorlist 

# ändra till en rad för att inte bråka med c-a-pil upp och ner
#      <property name="rows" type="uint" value="1"/>
# .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
