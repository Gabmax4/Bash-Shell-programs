# !/bin/bash
# Programa para revisar la declaracion de variables

option=0
nombre=Marco

echo "Opcion: $option y Nombre $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos 
export nombre

# Llamar a el sigueinte escript para recuperar la variable
./2_variables_2.sh
