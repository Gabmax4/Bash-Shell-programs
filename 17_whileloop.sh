# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion whil 
# Autor: Gabriel Maxemin


numero=1

while [ $numero -ne 10 ]
do 
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1 ))
done 
