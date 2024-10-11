#ВЫЧИЩАЕМ МУСОР 
#(Для стандартно установленной EndevourOS. Не требуется для чистого Arch Linux.)
sudo pacman -Rns welcome
sudo pacman -Rns eos-apps-info 
sudo pacman -Rns eos-log-tool 
sudo pacman -Rns eos-quickstart 
sudo pacman -Rns eos-rankmirrors
sudo pacman -Rns eos-packagelist
sudo pacman -Rns reflector-simple 
sudo pacman -Rns reflector
sudo pacman -Rns meld
sudo pacman -Rns networkmanager-openconnect 
sudo pacman -Rns gnome-usage
sudo pacman -Rns gnome-music
sudo pacman -Rns xterm
sudo pacman -Rns gnome-console
sudo pacman -Rns pavucontrol
sudo pacman -Rns firewalld
sudo pacman -Rns gnome-nettool
sudo pacman -Rns gnome-screenshot
sudo pacman -Rns $(pacman -Qdtq)
sudo pacman -Scc
yay -Rns $(yay -Qdtq)

#ВАЖНО!!!!
#ОБНОВЛЯЕМ ПАКЕТЫ И КАЧАЕМ AUR (yay)
sudo pacman -Syu
cd
sudo pacman -Rns yay-bin && pacman -Rns yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -sric
cd

#ВАЖНО!!!!
#КАЧАЕМ НУЖНЫЕ ПАКЕТЫ
yay -S ananicy
#Источники:
#https://github.com/Nefelim4ag/Ananicy 
#https://youtu.be/JgYih3f_AcE?si=AjJN0purYnBuQBvW

sudo pacman -S reflector
#Источники:
#https://wiki.archlinux.org/title/Reflector
#https://youtube.com/watch?v=xzMlIZmBYYg&si=sY6m-0FW99A_wc6R

git clone https://aur.archlinux.org/nohang-git.git && cd nohang-git && makepkg -sric
cd
#Источники:
#https://github.com/hakavlad/nohang
#https://www.youtube.com/watch?v=2kiVrkDkZEw

yay -S pamac-flatpak #ВАЖНО, если вам нужны приложения Flatpak, AUR и pacman c удобным графическим интерфейсом!!!! 
#Если же вам нужен ТОЛЬКО Flatpak, но не нужен Pamac, уберите "#" в самом начале нижней строки и добавте "#" в самое начало верхней
#sudo pacman -S flatpak #Уберите "#" в самом начале этой строки, если вам нужен Flatpak (Не требуется, если вы не добавляли "#" в начало строки "yay -S pamac-flatpak")

#ПРИМЕЧАНИЕ К ИНСТРУКЦИИ ВЫШЕ!!! Если вы полностью отключили установку Flatpak, то вы не сможите установить дополнительные пакеты из репозитория Flatpak!
#Рекомендуется хотя бы убрать "#" в самом начале 37 строки для установки Flatpak в систему (Не требуется, если вы не добавляли "#" в начало строки "yay -S pamac-flatpak")

yay -S extension-manager #Менаджер расширений для оболочки GNOME

