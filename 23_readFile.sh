# ! /bin/bash
# Programa para ejemplificar como se lee en un archivo 
# Autor: Gabriel Maxemin

echo "Leer en un Archivo"
cat $1
echo -e "\nAlmacenar los valores en un variable"
valorCat= cat $1
echo "$valorCat"

#Se utiliza la varibale IFS (Interval Fiel Seperator) para evitar que los espacion en blanco al inicio al final se recortan
echo -e "\nLeer archivo lina por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
