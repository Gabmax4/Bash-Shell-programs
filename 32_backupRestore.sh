# ! /nin/bash
# Programa que permte manejar las utilidades de Postgres
# Autor: Gabriel MAxemin

opcion=0

#Esta es la funcion para instalar postgress
instalar_postgres () {
    echo -e "\nInstalar Postgres...."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostgres ya se encuentra instalado"
    else
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt get -y install postgresql postgresl conrib 
        sudo -u postgress psql -c "ALTER USER postgress WITH PASSWORD '{passwordPostgres};'"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "Presione ENTER para continuar..."
}

desintalar_postgres () {
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S systemctl apt-get -y --purge remove postgresql\* 
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n1 -s -r -p "Presione ENTER para continuar..."


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

