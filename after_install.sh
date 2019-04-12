# УСТАНОВКА ТВИК УТИЛИТЫ:
sudo apt install -y gnome-tweak-tool &&

# ВЕРНУТЬ ДОПОЛНЕНИЯ ДЛЯ GNOME:
sudo apt install -y chrome-gnome-shell &&

# ТЕМЫ ИКОНОК NUMIX
sudo add-apt-repository -y ppa:numix/ppa &&
sudo apt install -y numix-gtk-theme numix-icon-theme-circle &&

# ПОДДЕРЖКА 32-БИТ БИБЛИОТЕК
sudo dpkg --add-architecture i386 &&
sudo apt install -y libc6:i386 libasound2:i386 libasound2-data:i386 libasound2-plugins:i386 libgtk2.0-0:i386 libsdl2-2.0-0:i386 libsdl2-image-2.0-0:i386 libfreetype6:i386 libcurl3:i386 &&

# КОДЕКИ, ДОПОЛНЕНИЯ
sudo apt install -y ubuntu-restricted-extras libavcodec-extra browser-plugin-freshplayer-pepperflash build-essential libgtk2.0-dev cmake gparted mono* aspell aspell-ru p7zip-rar p7zip-full &&

# АРХИВАТОРЫ
sudo apt install -y p7zip-rar rar unrar unace arj cabextract &&

# ПАКЕТ JDK, JRE И ПЛАГИН ДЛЯ БРАУЗЕРА
sudo add-apt-repository -y ppa:webupd8team/java &&
sudo apt install -y oracle-java8-installer &&

# ОБНОВЛЕНИЕ МИКРОКОДА INTEL
# sudo apt install --reinstall intel-microcode &&

# ОБНОВЛЕНИЕ МИКРОКОДА AMD
sudo apt install --reinstall amd64-microcode &&


# ОТКЛЮЧЕНИЕ ЗАЩИТЫ ОТ УЯЗВИМОСТЕЙ SPECTRE и MELTDOWN(серьезно снижают производительность)
# зайдите в файл конфигурации grub
# sudo nano /etc/default/grub
# и измените строк:
# GRUB_CMDLINE_LINUX_DEFAULT=""
# чтобы получилось так:
# GRUB_CMDLINE_LINUX_DEFAULT="spectre_v2=off nopti pti=off"
# если строка не пуста, добавьте значения через пробел к остальным

#NVIDIA NATIVE DRIVER
sudo add-apt-repository -y ppa:graphics-drivers/ppa &&

#TMP ПАПКУ В ОПЕРАТИВНУЮ ПАМЯТЬ
echo 'tmpfs /tmp tmpfs noatime,nodiratime,mode=1777,size=50% 0 0' | sudo tee -a /etc/fstab
#Здесь size=50% устанавливает максимальный объём диска в половину всей физической памяти (это также и значение по умолчанию). Изменения вступят в силу после перезагрузки.
