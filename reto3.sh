# ! /bin/bash
#progrma reto 3
echo "Ingrese un valor del 1 al 5:"
read opcion

case $opcion in
    1)
        # Validación numérica: Verificar si un número es par
        echo " Validación numérica: Verificar si un número es par"
        read -p "Ingrese un número: " numero
        if (( numero % 2 == 0 )); then
            echo "El número $numero es par."
        else
            echo "El número $numero es impar."
        fi
        ;;
    2)
        # Validación de cadena: Verificar si la cadena está vacía
        echo "Validación de cadena: Verificar si la cadena está vacía"
        read -p "Ingrese una cadena: " cadena
        if [ -z "$cadena" ]; then
            echo "La cadena está vacía."
        else
            echo "La cadena ingresada es: $cadena."
        fi
        ;;
    3)
        # Validación de archivo: Verificar si un archivo existe
        echo " Validación de archivo: Verificar si un archivo existe"
        read -p "Ingrese la ruta del archivo: " archivo
        if [ -e "$archivo" ]; then
            echo "El archivo '$archivo' existe."
        else
            echo "El archivo '$archivo' no existe."
        fi
        ;;
    4)
        # Validación numérica: Verificar si un número es mayor que 100
        echo "Validación numérica: Verificar si un número es mayor que 10"
        read -p "Ingrese un número: " numero
        if (( numero > 100 )); then
            echo "El número $numero es mayor que 100."
        else
            echo "El número $numero no es mayor que 100."
        fi
        ;;
    5)
        # Validación de cadena: Verificar si la cadena contiene solo letras
        echo " Validación de cadena: Verificar si la cadena contiene solo letras"
        read -p "Ingrese una cadena: " cadena
        if [[ "$cadena" =~ ^[A-Za-z]+$ ]]; then
            echo "La cadena contiene solo letras."
        else
            echo "La cadena contiene caracteres no permitidos."
        fi
        ;;
    *)
        echo "Opción inválida. Por favor, ingrese un valor del 1 al 5."
        ;;
esac
