#!/bin/bash
# Author - tourbour
# License - WTFPL http://www.wtfpl.net/
BGGREEN='\033[42m'     #  ${BGGREEN}
NORMAL='\033[0m'      #  ${NORMAL}
# УСТАНОВКА ТВИК УТИЛИТЫ:
echo -en "${BGGREEN} Ставим утилиту для подстройки Gnome ${NORMAL}"
sleep 5
sudo apt install -y gnome-tweak-tool

# ВЕРНУТЬ ДОПОЛНЕНИЯ ДЛЯ GNOME:
echo -en "${BGGREEN} Включаем расширения для Gnome ${NORMAL}"
sleep 5
sudo apt install -y chrome-gnome-shell

# СВЕДЕНИЯ О СИСТЕМЕ
echo "${BGGREEN} Ставим программу inxi, чтоб посмотреть на железки ${NORMAL}"
sudo apt install -y inxi

# ТЕМЫ ИКОНОК NUMIX
echo -en "${BGGREEN} Добавляем репозиторий с темами и устанавливаем тему и значки Numix ${NORMAL}"
sleep 5
sudo add-apt-repository -y ppa:numix/ppa
sudo apt install -y numix-gtk-theme numix-icon-theme-circle

# ПОДДЕРЖКА 32-БИТНЫХ БИБЛИОТЕК
echo -en "${BGGREEN} Включаем поддержку 32-битных приложений и ставим необходимый минимум ${NORMAL}"
sleep 5
sudo dpkg --add-architecture i386
sudo apt install -y libc6:i386 libasound2:i386 libasound2-data:i386 libasound2-plugins:i386 libgtk2.0-0:i386 libsdl2-2.0-0:i386 libsdl2-image-2.0-0:i386 libfreetype6:i386 libcurl3:i386

# КОДЕКИ, ДОПОЛНЕНИЯ, ПЛЕЕРЫ
echo -en "${BGGREEN} Устанавливаем кодеки, шрифты и прочие надобности ${NORMAL}"
sleep 5
sudo apt install -y vlc smplayer ubuntu-restricted-extras libavcodec-extra browser-plugin-freshplayer-pepperflash build-essential libgtk2.0-dev cmake gparted mono* aspell aspell-ru p7zip-rar p7zip-full &&

# АРХИВАТОРЫ
echo -en "${BGGREEN} Устанавливаем набор различных архиваторов ${NORMAL}"
sleep 5
sudo apt install -y p7zip-rar rar unrar unace arj cabextract

# ПАКЕТ JDK, JRE И ПЛАГИН ДЛЯ БРАУЗЕРА
echo -en "${BGGREEN} Устанавливаем Java для системы и браузера ${NORMAL}"
sleep 5
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt install -y oracle-java8-installer

# РЕПОЗИТОРИЙ С ДРАЙВЕРАМИ NVIDIA
echo -en "${BGGREEN} Добавляем репозиторий с проприетарными драйверами Nvidia ${NORMAL}"
sleep 5
sudo add-apt-repository -y ppa:graphics-drivers/ppa

# ПОМЕЩАЕМ ПАПКУ TMP В ОПЕРАТИВНУЮ ПАМЯТЬ
echo -en "${BGGREEN} Помещаем папку для временных файлов в оперативную память ${NORMAL}"
sleep 5
echo "tmpfs /tmp tmpfs rw,nosuid,nodev" | sudo tee -a /etc/fstab

