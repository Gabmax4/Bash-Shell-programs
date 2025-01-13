# ! /bin/bash
# Programa para ejemplificar  la creacion de archivos direcctorios 
# Autor: Gabriel Maxemin

echo "Archivos - Directorios"
if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio Creado Correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo Creado Correctamente"
    ls -la $2
else 
    echo "No Existe Esa Opcion": $1
fi
