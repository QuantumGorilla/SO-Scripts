#! /bin/bash
#Nos posicionamos en la carpeta del usuario
cd ~
#
echo Nombre del directorio:
read grupo
ruta=$(find . -name $grupo)
if [ "$ruta" ]; then
	cd $ruta
	#Cuenta archivos
	archivos=$(find . -type f | wc -l)
	echo Número de archivos es: $archivos
	directorios=$(find . -type d | wc -l)
	echo Número de directorios es: $directorios
else
	echo El directorio no existe
fi
