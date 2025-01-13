# !/bin/bash
# Programa para ejemplificar el uso del case
# Autor: Gabriel maxemin

opcion=""

echo "Ejemplo Sentencia case"
read -n1 -p "Indgrese una opcion (A-Z): " opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion guardad archivo";;
    "B") echo "Operacion Eliminar Archivo";;
   [C-E]) echo "No esta implementada la operacion";;
    "*") echo "Opcion incorrecta"
esac
