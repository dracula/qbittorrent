### [QBittorrent](https://www.qbittorrent.org/)

#### Application Theme (Client)

1. Download .qbtheme using the [raw .qbtheme download](https://github.com/dracula/qbittorrent/raw/master/qbittorrent.qbtheme) option.
2. Enable theme selection from menu: → Tools → Options → Behavior → Interface → Use custom UI Theme.
3. In 'UI Theme file' click on the file icon and select your '.qbtheme' file.
4. Restart qbittorrent to apply theme.

#### WebUI Theme (Server)

1. Clone the repository:
    ```
    cd /opt
    git clone https://github.com/dracula/qbittorrent.git
    chmod -R 777 nightwalker
    ```
2. Enable theme selection from menu: → Tools → Options → Web UI → Use alternative Web UI.
3. In 'Files locations' bar, you should type `/opt/qbittorrent/webui` .
