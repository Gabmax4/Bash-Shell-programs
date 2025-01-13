# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de fecision is, else
# Autor: Gabriel Maxemin

notaClase=0
edad=0

echo "Ejemplo Sentencia If else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
    echo "El alumno APROBADO!"
else 
    echo "El alumno REPROBO"
fi

read -p "Indique cual es su edad: " edad
if (( $edad >= 18 )); then
    echo "La persona PUEDE VOTAR"
else
    echo "La persona NO PUEDE VOTAR"
fi

