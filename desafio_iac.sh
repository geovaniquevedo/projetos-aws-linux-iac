#!/bin/bash

echo "Criação dos diretórios"
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "Criação dos grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos usuários e grupo GRP_ADM"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_ADM

echo "Criação dos usuários e grupo GRP_VEN"
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_VEN

echo "Criação dos usuários e grupo GRP_SEC"
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senh@123) -G GRP_SEC

echo "Permissão do grupo no diretório criado /ADM"
chown root:GRP_ADM /adm

echo "Permissão do grupo no diretório criado /VEN"
chown root:GRP_VEN /ven

echo "Permissão do grupo no diretório criado /SEC"
chown root:GRP_SEC /sec

echo "Permissão no diretório /ADM"
chmod 770 /adm

echo "Permissão no diretório /VEN"
chmod 770 /ven

echo "Permissão no diretório /SEC"
chmod 770 /sec

echo "Permissão total no diretório /Publico"
chmod 777 /publico

echo "Terminou"

