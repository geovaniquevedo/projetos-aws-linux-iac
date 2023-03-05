#! /bin/bash

echo "Atualização do Ubuntu"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Criando pasta /tmp, baixando aplicação do GitHub, descompatando e copiando para pasta de destino"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


