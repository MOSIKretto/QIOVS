#ВАЖНО!!!!
#Настройка reflector (Выбор лучших зеркал для скачивания в вашем регионе)
cd reflector/
sudo mv VidgexOS_reflector.conf /etc/xdg/reflector/reflector.conf
cd ../

cd cd Vidgex/
sudo mv Vidgex /home/user/
sudo mv spoofdpi.desktop /home/user/.local/share/applications/
sudo mv Glava.desktop /home/user/.local/share/applications/
#пропишите свой путь до папки вместо user

#ВАЖНО!!!!
#Включаем нужные демоны
sudo systemctl enable bluetooth
sudo systemctl start reflector
sudo systemctl enable --now reflector.timer
sudo systemctl enable --now ananicy
sudo systemctl enable fstrim.timer
sudo systemctl enable --now nohang-desktop 
#Запуск Trim (предназначена в основоном для SSD и может не работать на HDD)
sudo fstrim -v 
sudo fstrim -va

reboot
