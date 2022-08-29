#!/bin/bash

echo "Atualizando servidor..."
apt update
apt upgrade -y

echo "Instalando apache2 e unzip..."
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicacao..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
