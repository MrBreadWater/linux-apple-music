#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`/AppleMusic
cd ${WORKING_DIR}
cat <<EOS > AppleMusic.desktop
[Desktop Entry]
Name=Apple Music
Name[en_US]=Apple Music
Comment=Unofficial Apple Music Electron App for Linux
Exec="${FULL_PATH}/AppleMusic"
Terminal=false
Categories=Utility;Audio;
Type=Application
Icon=${WORKING_DIR}/icon.png
StartupWMClass=AppleMusic
EOS
chmod +x AppleMusic.desktop
## This can be updated if this path is not valid. 
cp -p AppleMusic.desktop ~/.local/share/applications
