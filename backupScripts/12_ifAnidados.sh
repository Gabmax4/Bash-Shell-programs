# !/bin/bash
# Programa para ejemplificar el uso de if anidados
# Autor: Gabriel maxemin
notaClase=0
continua=""

echo "Ejemplo Sentencia If else"
read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "El alumno APROBADO!"
    read -p "Va continuar estudiando en el siguiente semestre (s/n)" continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else 
        echo "Gracias por trabajar con nosotros mucha suerte"
    fi
else 
    echo "El alumno REPROBO"
fi
