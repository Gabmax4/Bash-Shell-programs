# ! /bin/bash
# Programa para Ejemplificar la forma de como trasferir por la red con el comando rsync, utilizzanod las opcionde de empaquetamiento para optimizar velocidad de tranferencia 
# Autor: Gabriel Maxemin

echo "Empaquetar todos los scrips de la carpeta shellCourse y trasferirlos a otro equipo utilizando el comando rsync"


read -p "Ingresa el host" host
read -p "Ingresar el usuario" usuario
echo -e "\nEne este momento se procedera a empaquetar la carpeta y transferir segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:Users/martosfe/Downloads/platzi
