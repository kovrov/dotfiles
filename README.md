dconf-editor

    com.canonical.Unity.Lenses always-search ['applications.scope', 'info-calculator.scope']

~/.config/user-dirs.dirs

    xdg-user-dirs-update --set DESKTOP ~/desktop
    xdg-user-dirs-update --set DOWNLOAD ~/downloads
    xdg-user-dirs-update --set TEMPLATES ~/templates
    xdg-user-dirs-update --set PUBLICSHARE ~/public
    xdg-user-dirs-update --set DOCUMENTS ~/projects
    xdg-user-dirs-update --set MUSIC ~/music
    xdg-user-dirs-update --set PICTURES ~/pictures
    xdg-user-dirs-update --set VIDEOS ~/videos

steam

    sudo chmod g+s /opt/steam
    sudo setfacl -d -m group:games:rwx /opt/steam
