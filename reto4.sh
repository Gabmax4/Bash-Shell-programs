# ! /nin/bash
# Programa reto No.4
# Autor: Gabriel MAxemin

opcion=0

while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "--------------------------"
    echo "PGUTIL - Progrma de utilidade"
    echo "--------------------------"
    echo "              MENU PRINCIPAL"
    echo "--------------------------"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Informacion Programa"
    echo "5. Variables de entorno"
    echo "6. Informacion Programa"
    echo "7. Backup informacion"
    echo "8. Ingrese una opcion"

    #Leer los datos del usuario - capturar informacion
    read -n1 -p "Ingrese una opcion [1-8]:" opcion

    #Validar la opcion ingresada
    case $opcion in 
        1)
            echo -e "\nOpcion No. 1"
            sleep 3
            ;;
        2)
            echo -e "\nOpcion No. 2"
            sleep 3 
            ;;
        3) 
            echo -e "\nOpcion No. 3"
            sleep 3
            ;;
        4) 
            echo -e "\nOpcion No. 4"
            sleep 3
            ;;
        5) 
            echo -e "\nOpcion No. 5"
            sleep 3
            ;;
        6) 
            echo -e "\nOpcion No. 6"
            sleep 3
            ;;
        7) 
            echo -e "\nOpcion No. 7"
            sleep 3
            ;;
        8) 
            echo -e "\nOpcion No. 8"
            sleep 3
            ;;
    esac
done 

