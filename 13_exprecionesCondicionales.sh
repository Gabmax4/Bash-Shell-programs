# !/bin/bash
# Programa para ejemplificar el uso de expreciones condicionales
# Autor: Gabriel maxemin

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolecente"
else 
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con numeros"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona del Sur de America"
else 
    echo "Se desconose la nacionalidad"
fi

echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo Existe"
else 
    echo "El directoria $pathArchivo No exxiste"
fi 

