# УСТАНОВКА ТВИК УТИЛИТЫ:
echo "Ставим утилиту для подстройки Gnome"
sudo apt install -y gnome-tweak-tool

# ВЕРНУТЬ ДОПОЛНЕНИЯ ДЛЯ GNOME:
echo "Включаем расширения для Gnome"
sudo apt install -y chrome-gnome-shell

# ТЕМЫ ИКОНОК NUMIX
echo "Добавляем репозиторий с темами и устанавливаем тему и значки Numix"
sudo add-apt-repository -y ppa:numix/ppa
sudo apt install -y numix-gtk-theme numix-icon-theme-circle

# ПОДДЕРЖКА 32-БИТ БИБЛИОТЕК
echo "Включаем поддержку 32-битных приложений и ставим необходимый минимум"
sudo dpkg --add-architecture i386
sudo apt install -y libc6:i386 libasound2:i386 libasound2-data:i386 libasound2-plugins:i386 libgtk2.0-0:i386 libsdl2-2.0-0:i386 libsdl2-image-2.0-0:i386 libfreetype6:i386 libcurl3:i386

# КОДЕКИ, ДОПОЛНЕНИЯ
echo "Устанавливаем кодеки, шрифты и прочие надобности"
sudo apt install -y ubuntu-restricted-extras libavcodec-extra browser-plugin-freshplayer-pepperflash build-essential libgtk2.0-dev cmake gparted mono* aspell aspell-ru p7zip-rar p7zip-full &&

# АРХИВАТОРЫ
echo "Устанавливаем набор различных архиваторов"
sudo apt install -y p7zip-rar rar unrar unace arj cabextract

# ПАКЕТ JDK, JRE И ПЛАГИН ДЛЯ БРАУЗЕРА
echo "Устанавливаем Java для системы и браузера"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt install -y oracle-java8-installer

# ОБНОВЛЕНИЕ МИКРОКОДА INTEL
echo "Обновляем микрокод процессора"
# sudo apt install --reinstall intel-microcode &&

# ОБНОВЛЕНИЕ МИКРОКОДА AMD
sudo apt install --reinstall amd64-microcode


# ОТКЛЮЧЕНИЕ ЗАЩИТЫ ОТ УЯЗВИМОСТЕЙ SPECTRE и MELTDOWN(серьезно снижают производительность)
# зайдите в файл конфигурации grub
# sudo nano /etc/default/grub
# и измените строк:
# GRUB_CMDLINE_LINUX_DEFAULT=""
# чтобы получилось так:
# GRUB_CMDLINE_LINUX_DEFAULT="spectre_v2=off nopti pti=off"
# если строка не пуста, добавьте значения через пробел к остальным

#NVIDIA NATIVE DRIVER
echo "Добавляем репозиторий с проприетарными драйверами Nvidia"
sudo add-apt-repository -y ppa:graphics-drivers/ppa

#TMP ПАПКУ В ОПЕРАТИВНУЮ ПАМЯТЬ
echo "Помещаем папку для временных файлов в оперативную память"
echo 'tmpfs /tmp tmpfs noatime,nodiratime,mode=1777,size=50% 0 0' | sudo tee -a /etc/fstab
#Здесь size=50% устанавливает максимальный объём диска в половину всей физической памяти (это также и значение по умолчанию). Изменения вступят в силу после перезагрузки.
