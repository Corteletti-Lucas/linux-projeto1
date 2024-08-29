#! /bin/bash

echo "Fazendo exercicios da DIO..."

echo "Criando as pastas"

mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -c "Carlos Henrique" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_ADM
useradd maria -c "Maria Joana" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_ADM
useradd joao -c "João Venancio" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_ADM

useradd debora -c "Debora Borges" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G  GRP_VEN

useradd josefina -c "Josefina Pereira" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Costa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Costa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Permissões dos Diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando exercicio...."
