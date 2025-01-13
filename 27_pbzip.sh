# ! /bin/bash
# Programa para Empaquetamiento con el comandto pbzip 
# Autor: Gabriel Maxemin

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip el empaquetameinto anterior se elimina
gzip shellCourse.tar
pbzip2 -f shellCourse.tar

echo "Empaquetar un directorio con tar y pbzip"
tar -cf *.sh > shellCourseDos.tar.bz
