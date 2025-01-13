# ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo 
# Autor: Gabriel Maxemin

echo "Operaciones en un Archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScrips"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nm¿Mover el directorio backupScripst a otra ubicacion $HOME"
mv backupScripts

echo -e "\nEliminar los archivos .txt"
rm *.txt
