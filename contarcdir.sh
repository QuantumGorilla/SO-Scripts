#! /bin/bash
#Nos posicionamos en la carpeta del usuario
cd ~
echo Escriba el nombre del grupo
read grupo
ruta=$(find . -name $grupo)
if [ "$ruta" ]; then
	cd $ruta
	#Cuenta archivos
	archivos=$(find . -type f | wc -l)
	echo Número de archivos: $archivos
else
	echo El directorio no existe
fi
