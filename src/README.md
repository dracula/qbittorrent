# QBittorrent Theme
[qBittorrent](https://qbittorrent.org/) is a cross-platform free and open-source BitTorrent client.

[How to create your theme? - Reference](https://github.com/qbittorrent/qBittorrent/wiki/Create-custom-themes-for-qBittorrent)

This theme is added to [qbittorrent](https://github.com/qbittorrent/qBittorrent)'s wiki page on github. [Click Here](https://github.com/qbittorrent/qBittorrent/wiki/List-of-known-qBittorrent-themes)

## Headers
- [Install Qbittorrent](#installation)
- [How to use theme?](#usage)
- [ScreenShots](#screenshots)
- [Development](#development)
- [Compiling](#compile)


## Installation
```
$ pacman -S qbittorrent
```


## Usage
1. Enable theme selection from menu:
→ Tools → Options → Behavior → Interface → Use custom UI Theme
2. In 'UI Theme file' click on the file icon and select your '.qbtheme' file
3. Restart qbittorrent to apply theme



## ScreenShots
<img src="https://raw.githubusercontent.com/mahdymirzade/mahdymirzade/main/assets/dotfiles/qbittorrent.png" alt="Custom theme" width="512" height="288">


## Development
Qbittorrent theme is orginally a single '.qbtheme' file
that you can select and use in qbittorrent preferences,
which you need to compile a '.qrc' file with [rcc](https://doc.qt.io/qt-5/rcc.html).

You can edit stylesheet.qss, config.json to start
making your very own qbittorrent theme!

My theme contains:
| Name			| Desc				|
| --------------------- | ----------------------------- |
| Icons/		| Contains GUI Icons		|
| Icons/qss/		| // //				|
| stylesheet.qss	| Full theming			|
| config.json		| Custom GUI colors		|
| resources.qrc		| Resources for compiling	|



## Compile
Compiling this theme requires [rss](https://doc.qt.io/qt-5/rcc.html).

You can install this tool with:
```
$ pacman -S qt5-base
```

Now we can generate our theme:
```
$ rcc resources.qrc -o example.qbtheme -binary
# resouces.qrc: list of the files
# example.qbtheme: name of your theme
```
