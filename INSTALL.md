### [QBittorrent](https://www.qbittorrent.org/)

#### Application Theme (Client)

1. Download .qbtheme using the [raw .qbtheme download](https://github.com/dracula/qbittorrent/raw/master/dracula.qbtheme) option.
2. Enable theme selection from menu: Tools -> Preferences -> Behaviour -> Interface -> Use custom UI Theme.
3. In 'UI Theme file', click on the file icon and select your '.qbtheme' file.
4. Restart qBittorrent to apply the theme.


#### Troubleshooting for Microsoft Windows
![windows flashes white](https://raw.githubusercontent.com/dracula/qbittorrent/master/screenshots/troubleshooting.windows-titlebar.png)

In Windows, the qBittorrent application flashes white when reopened after being minimized, and also, the title bar isn't light-themed.
This problem exists because the app is non-native.
It opens a white canvas before the rendering engine is active.

In order to fix this issue:

**Method 1.** Change "Title bars and window borders" on Windows 10 Color Setting

**Method 2.** Use the Registry key on Windows 10, [click here](https://www.onmsft.com/how-to/how-to-get-dark-theme-title-bars-in-windows-10-without-changing-your-accent-colour). (Successful on Windows 11)

**Method 3.** Use the [MicaForEveryone](https://github.com/minusium/MicaForEveryone) (Windows 11 only)

#### WebUI Theme (Server)
![qbittorrent dracula theme (webui)](https://raw.githubusercontent.com/dracula/qbittorrent/master/screenshots/screenshot.webui.png)

1. Clone the repository:
    ```
    cd /opt
    git clone https://github.com/dracula/qbittorrent.git
    chmod -R 777 qbittorrent
    ```
2. Enable theme selection from menu: → Tools → Options → Web UI → Use alternative Web UI.
3. In the 'Files locations' bar, you should type `/opt/qbittorrent/webui`.
