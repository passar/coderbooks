# fixa klockan innan allt annat
# chromebooksen saknar batetri så klockan är alltid fel
# nedan som uppstartskript kanske? eller installera fake-hwclock. Det senare har fungerat bra.
sudo ntpd -qg
sudo hwclock --systohc

## en aurpakethanterare

## isnstallera 
yay fake-hwclock-git

sudo systemctl enable fake-hwclock.service
sudo systemctl start fake-hwclock.service

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

### manjaro har en störig meny för terminalen
# behöver ändra i filen nedan till följande rad
# ./.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
#  <property name="&lt;Primary&gt;&lt;Alt&gt;t" type="string" value="xfce4-terminal"/>
# cat ./.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml | grep terminal


# stäng av varning för att klistra in i terminalen
# fixade det manuellt i menyn men det borde finnas en fil att ändra i.
# det var xfce-terminal
# vim .config/xfce4/terminal/terminalrc 
# det är i filen ovan som man gör ändringar
# egrep safe .config/xfce4/terminal/terminalrc

# fixa klockan genom ntp och falsk hårdvaruklocka


# ranka mirrors
rankmirrors /etc/pacman.d/mirrorlist > mirrors
sudo mv mirrors /etc/pacman.d/mirrorlist 

  # ändra till en rad för att inte bråka med c-a-pil upp och ner
#      <property name="rows" type="uint" value="1"/>
# .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
