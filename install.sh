#!/bin/bash

cd $HOME/Update-All
chmod +x 'update-all'
cd $HOME/.local/share/applications
touch update-all.desktop
echo "[Desktop Entry]
Name=Update All
GenericName=Update helper
Comment= UPDATE ALL is a bash script that update and upgrade repositories and packages on linux.
Exec=/etc/terminal-run $HOME/Update-All/update-all 'Update All'
Icon=$HOME/Update-All/icons/icon-64.png
Terminal=false
StartupNotify=true
Type=Application
Categories=Utility;
" >> update-all.desktop || error "Failed to create menu button!"
