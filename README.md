
# Obsidian Ubuntu Installer

Install the latest version of Obsidian on Ubuntu with just one command.

## Overview

This script provides a quick and effortless way to install Obsidian on Ubuntu, bypassing the limitations commonly encountered when using `snap` or `flatpak` packages. With this installer, you can enjoy full functionality, including the use of plugins and custom configurations, which are often restricted in other installation methods.

The script automatically:

- Downloads the latest `.AppImage` version of Obsidian.
- Extracts and installs Obsidian in `/opt/Obsidian`.
- Creates a symbolic link for easy access from the terminal.
- Sets up a desktop entry for easy launching from the applications menu.

### Why Use This Script?

- **Up-to-Date Installation**: Always get the latest version of Obsidian directly from the official releases.
- **Full Functionality**: Unlike `snap` or `flatpak` installations, this method allows complete access to all Obsidian features, including plugins and custom settings.
- **Automatic Setup**: No need to manually download, extract, or configure the application. This script does it all for you.

## Compatibility

This script is compatible with Ubuntu 24.04 and other recent versions of Ubuntu.

## Installation

To install Obsidian using this script, simply run the following command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/oviniciusfeitosa/obsidian-ubuntu-installer/main/install.sh | sh
```

## How It Works

1. **Download**: The script fetches the latest Obsidian `.AppImage` from the official GitHub releases.
2. **Extract and Install**: It extracts the `.AppImage` and moves the files to `/opt/Obsidian`, ensuring proper permissions and ownership.
3. **Create a Symlink**: A symbolic link is created in `/usr/local/bin` for easy command-line access.
4. **Desktop Integration**: A desktop entry is created so you can launch Obsidian from your application menu.

## Contributing

Feel free to contribute to this repository by submitting issues or pull requests. Any suggestions for improvements are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

By using this script, you ensure that you have the latest and most functional version of Obsidian on your Ubuntu system without any hassle. Enjoy a seamless knowledge management experience!
