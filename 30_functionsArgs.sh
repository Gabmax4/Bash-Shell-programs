# ! /nin/bash
# Programa que permte manejar las utilidades de Postgres
# Autor: Gabriel MAxemin

opcion=0

#Esta es la funcion para instalar postgress
instalar_postgres () {
    echo "Instalar Postgres...."
}

desintalar_postgres () {
    echo "Desintalar Postgress...."
}

sacar_respaldo () {
    echo "Sacar Respaldo"
    echo "Directorio Backup: $1"
}

restaurar_respaldo () {
    echo "Restaurar Respaldo....."
    echo "Directorio Respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "--------------------------"
    echo "PGUTIL - Progrma de utilidad de Postgres"
    echo "--------------------------"
    echo "              MENU PRINCIPAL"
    echo "--------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3 Sacar un respaldo"
    echo "4. Restar Respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1-5]:" opcion

    #Validar la opcion ingresada
    case $opcion in 
        1)
            instalar_postgres
            sleep 3
            ;;
        2)
            desintalar_postgres
            sleep 3 
            ;;
        3)
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldo" directorioRes
            restaurar_respaldo $directorioRes
            sleep 3
            ;;
        5) 
            echo -e "\nSalir del programa"
            exit 0
            ;;
    esac
done 

