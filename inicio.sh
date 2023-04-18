#!/bin/bash
#Autor: Jose Millan
#Fecha: 18/04/2023

while true; do 
clear
echo "MENU"
echo "----"
echo "(1) CREAR EL CONTROL DE VERSION"
echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
echo "(3) REALIZAR PRIMER COMMIT"
echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
echo "(5) CONFIGURAR REPOSITORIO REMOTO"
echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
echo "(8) SALIR"

echo
echo -n "ESCRIBA SU OPCION? "

read opcion 

case $opcion in
1)
clear
echo "(1) CREAR EL CONTROL DE VERSION"
echo "-------------------------------"
git init
read -rsp $'Press enter to continue...\n'
;;
2)
clear
echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
echo "---------------------------------------------"
git config user.name "JoseMillanRodriguez"
git config user.email "jose.millanrodriguez@hotmail.com"
git config user.password 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 
read -rsp $'Press enter to continue...\n'
;;
3)
clear
echo "(3) REALIZAR PRIMER COMMIT"
echo "--------------------------"
git add .
git commit -m "SNAPSHOT1"
read -rsp $'Press enter to continue...\n'
;;
4)
clear
echo "(4) REALIZAR COMMIT SOBRE EL ULTIMO"
echo "-----------------------------------"
git add .
git commit --amend -m "SNAPSHOT1"
read -rsp $'Press enter to continue...\n'
;;
5)
clear
echo "(5) CONFIGURAR REPOSITORIO REMOTO"
echo "---------------------------------"
git remote add origin "https://github.com/JoseMillanRodriguez/PROTECTO_SCRIPT_LINUX.git"
read -rsp $'Press enter to continue...\n'
;;
6)
clear
echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
echo "--------------------------------------------------------"
git branch -M main 
read -rsp $'Press enter to continue...\n'
;;
7)
clear
echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
echo "----------------------------------------"
git push -u -f origin main
read -rsp $'Press enter to continue...\n'
;;
8)
clear
echo "GRACIAS POR SU VISITA"
echo "---------"
exit 0
read -rsp $'Press enter to continue...\n'
;;
*)
clear
echo "OPCION INCORRECTA"
read -rsp $'Press enter to continue...\n'
;;
esac
done  