#!/bin/bash

# Obtener la fecha y hora actual en el formato yyyyMMDD_HHmmSS
timestamp=$(date +"%Y%m%d_%H%M%S")

# Crear el nombre del archivo de log en el directorio actual
log_file="log_${timestamp}.log"

# Copiar el contenido de utilityHost.sh al archivo de log
cp "utilityHost.sh" "$log_file"

# Notificar al usuario
echo "El contenido de utilityHost.sh ha sido copiado en el archivo de log: $log_file"
