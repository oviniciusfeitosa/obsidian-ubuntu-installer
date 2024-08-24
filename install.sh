#!/bin/bash

mkdir -p /tmp/obsidian-installer
cd /tmp/obsidian-installer
download_url=$(curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest | grep "browser_download_url.*AppImage" | grep -v "arm64" | cut -d : -f 2,3 | tr -d \")
download_url=$(echo "$download_url" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
filename=$(basename "$download_url")
version=$(echo "$filename" | sed -n 's/Obsidian-\(.*\)\.AppImage/\1/p')
echo "> Downloading '$filename' file version '$version' from '$download_url'"
wget "$download_url" -O "$filename"
echo "> File '$filename' was downloaded successfully"
echo "> Changing file permissions"
chmod +x "$filename" && ./"$filename" --appimage-extract
destination_folder="/opt/Obsidian"
echo "Application will be installed on '$destination_folder' folder"
sudo mv squashfs-root "$destination_folder"
sudo chown -R root: "$destination_folder"
sudo chmod 4755 "$destination_folder/chrome-sandbox"
sudo find /opt/Obsidian -type d -exec chmod 755 {} \;
if [ ! -e /usr/local/bin/obsidian ]; then
    echo "> Creating a symbolic link to /usr/local/bin/obsidian"
    ln -s /opt/Obsidian/AppRun /usr/local/bin/obsidian
fi
echo "> Creating a desktop entry"
echo "[Desktop Entry]
Name=Obsidian
Comment=A powerful knowledge base that works on top of a local folder of plain text Markdown files
Exec=/usr/local/bin/obsidian
Icon=$destination_folder/obsidian.png
Terminal=false
Type=Application
Version=$version
Categories=Office;Utility;
MimeType=x-scheme-handler/obsidian;text/html;" > ~/.local/share/applications/obsidian.desktop
echo "Obsidian $version installed successfully!"
