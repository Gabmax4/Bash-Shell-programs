# ! /bin/bash 
#Progrma para ejemplificar como capturar la informacion del usuario y validarla 
#Autor: Gabriel Maxemin

option=0
backupName=""
clave=""

echo "Programa de utilizadedes Postgrase"
#Acepta el ingreso de informacion de un caracter
read -n1 -p "Ingresar una opcion:" option
echo -e "\n"
read -n10 -p "Ingresa el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Option: $option , Backup: $backupName"
read -s -p "Clave:" clave
echo "LLave: $clave"
