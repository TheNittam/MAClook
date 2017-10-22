#!/bin/bash
chmod 777 *
echo "_______________________________________________________________"
echo "#                                                             #"
echo "#             MAClook v1 BY #NITTAM | @TheNittam              #"
echo "#_____________________________________________________________#"
echo "#                                                             #"
echo "#              ( Make Your Linux Look Like MAC )              #"
echo "#_____________________________________________________________#"
echo ""
sleep 1
echo " Close All Windows And Files Before Installation "
read -p " Using At Own Risk & I Am Ready To Use (y/n)? : " choice
case "$choice" in 
  y|Y ) echo " Changing System Look Into MAClook, It Will Take Max 10 Sec."
				for f in *.Nittam; do 
				mv -- "$f" "${f%.Nittam}.tar.xz"
				done
				rm Readme.md
				mv MacIcon.tar.xz /usr/share/icons
				mv MacGTK.tar.xz /usr/share/themes
				mv MacShellTheme.tar.xz /usr/share/themes
				mv MacWP.tar.xz /usr/share/backgrounds/gnome/
				mv Apple.tar.xz /usr/share/gnome-shell/extensions/apps-menu@gnome-shell-extensions.gcampax.github.com
				cd /usr/share/icons
				tar -xf MacIcon.tar.xz
				rm MacIcon.tar.xz
				gsettings set org.gnome.desktop.interface icon-theme 'MacIcon'
				cd /usr/share/themes
				tar -xf MacGTK.tar.xz
				rm MacGTK.tar.xz
				gsettings set org.gnome.desktop.interface gtk-theme "MacGTK"
				tar -xf MacShellTheme.tar.xz
				rm MacShellTheme.tar.xz
				gsettings set org.gnome.shell.extensions.user-theme name "MacShellTheme"
				cd /usr/share/backgrounds/gnome/
				tar -xf MacWP.tar.xz
				rm MacWP.tar.xz
				gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/gnome/MacWP.jpg
				cd /usr/share/gnome-shell/extensions/apps-menu@gnome-shell-extensions.gcampax.github.com
				tar -xf Apple.tar.xz
				rm Apple.tar.xz
				cd
				echo " MAClook Successfully Executed!!! "
				sleep 1
				echo " After 3 Sec. System Will Be Reboot "
				sleep 1
				echo " Enjoy!!!"
				reboot
;;
  n|N ) exit 0;;
	* ) echo " Alert!!! Invalid Command Detected";;
esac