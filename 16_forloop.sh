# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for 
# Autor: Gabriel Maxemin

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numero"
for num in 5 ${arregloNumeros[*]}
do 
    echo "numero: $num"
done 

echo "Iterar en la lista de cadenas"
for nom in "marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for fil in *
do 
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do 
    echo "Iterar archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i=1; i<10; i++))
do
    echo "numero: $i"
done
