# ! /bin/bash
# Programa para ejemplificar el uso de break y continue 
# Autor: Gabriel Maxemin

echo "Sentencia break y continue"
for fil in $(ls)
do 
    for nombre in {1..4}
    do 
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        fi
        echo "Nombre Archivo: $fil _ $nombre"
    done
done

