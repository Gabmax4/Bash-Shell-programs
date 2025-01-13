# ! /bin/bash
# Programa para Empaquetamiento con el comandto tar y dzip 
# Autor: Gabriel Maxemin

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetameinto anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo con un ratio de 9"
gzip -9 9_options.sh
