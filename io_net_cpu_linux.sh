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


# Устанавливаем curl, если его еще нет
sudo apt update
sudo apt install -y curl

# Загружаем и запускаем скрипт установки ionet
curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh

# Проверяем успешность установки прав на файл и запускаем скрипт
chmod +x ionet-setup.sh && ./ionet-setup.sh

# Ожидаем завершения выполнения ionet-setup.sh
wait

curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_linux -o launch_binary_linux

chmod +x launch_binary_linux

echo "============================================================"
echo "Run the command from your cloud console to connect device"
echo "============================================================"
