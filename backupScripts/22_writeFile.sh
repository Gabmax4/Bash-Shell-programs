# ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo 
# Autor: Gabriel Maxemin

echo "Archivos - Directorios"

echo "Valores escritos con el comando echo" >> $1

#Edicion Multilinea
cat <<E0M >> $1
$2
E0M
