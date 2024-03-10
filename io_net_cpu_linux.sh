#!/bin/bash

#Logo
# Этот скрипт предназначен для установки и запуска IO.NET
echo "=============================================================="
echo "  █████    ███████       ██████   █████ ██████████ ███████████"
echo " ░░███   ███░░░░░███    ░░██████ ░░███ ░░███░░░░░█░█░░░███░░░█"
echo "  ░███  ███     ░░███    ░███░███ ░███  ░███  █ ░ ░   ░███  ░" 
echo "  ░███ ░███      ░███    ░███░░███░███  ░██████       ░███"    
echo "  ░███ ░███      ░███    ░███ ░░██████  ░███░░█       ░███" 
echo "  ░███ ░░███     ███     ░███  ░░█████  ░███ ░   █    ░███"
echo "  █████ ░░░███████░   ██ █████  ░░█████ ██████████    █████"
echo " ░░░░░    ░░░░░░░    ░░ ░░░░░    ░░░░░ ░░░░░░░░░░    ░░░░░"
echo "=============================================================="
echo "        Welcome to IO.NET CPU Worker setup for Linux"
echo "============================================================"

echo "============================================================"
echo "Write the name of your node:"
echo "============================================================"
read NODENAME
echo 'export NODENAME='$NODENAME >> $HOME/.bash_profile
source ~/.bash_profile

# Устанавливаем curl, если его еще нет
sudo apt update
sudo apt install -y curl

# Загружаем и запускаем скрипт установки ionet
curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh
chmod +x ionet-setup.sh
./ionet-setup.sh

# Загружаем и устанавливаем исполняемый файл launch_binary_linux
curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_linux -o launch_binary_linux
chmod +x launch_binary_linux

# Запускаем launch_binary_linux с нужными параметрами, подставив значение переменной $NODENAME
./launch_binary_linux --device_id=044b39b8-6bc8-42f0-ad7d-5f33c504f549 --user_id=820cb56b-3d52-4099-a359-bfd8de33c5ca --operating_system="Linux" --usegpus=false --device_name=$NODENAME
docker ps
