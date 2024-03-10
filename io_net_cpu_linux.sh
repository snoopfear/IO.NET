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

# Проверяем успешность установки прав на файл и запускаем скрипт
if chmod +x ionet-setup.sh && ./ionet-setup.sh; then
    # Загружаем и устанавливаем исполняемый файл launch_binary_linux
    curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_linux -o launch_binary_linux
    chmod +x launch_binary_linux
else
    echo "Failed to set up ionet-setup.sh"
    exit 1
fi

echo "============================================================"
echo "Run the command from your cloud console to connect device"
echo "============================================================"
