# ! /bin/bash
# Programa para ejemplificar el uso de arreglos 
# Autor: Gabriel Maxemin

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Marco, Antonio, Pedro, Susana)
arregloRango=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arrelo de Numeros: ${arregloNumeros[*]}"
echo "Arrelo de Cadenas: ${arregloCadenas[*]}"
echo "Arrelo de Rangos: ${arregloRango[*]}"

#Imprimir los Tamaños de los arreglos
echo "Tamaño Arrelo de Numeros: ${#arregloNumeros[*]}"
echo "Tamaño Arrelo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arrelo de Rangos: ${#arregloRango[*]}"

#Imprmir la posicion Especificas
echo "Posicion 3 Arrelo de Numeros: ${arregloNumeros[3]}"
echo "Psicion 3 Arrelo de Cadenas: ${arregloCadenas[3]}"
echo "Posicion 3 Arrelo de Rangos: ${arregloRango[3]}"

#Imprimir y eliminar valores en un arreglo 
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Numero: ${arregloNumeros[*]}"
echo "Tamaño arreglo de Numero: ${#arregloNumeros[*]}"


