# !/bin/bash
# Programa para ejemplificar el uso de la sentencia de desicion if, else y elseif
# Autor: Gabriel Maxemin

notaClase=0
edad=0

echo "Ejemplo Sentencia If else"
read -p "Indique cual es su edad: " edad
if (( edad <= 18 )); then
    echo "La persona es adolescente"
elif [ "$edad" -ge 19 ] && [ "$edad" -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi
