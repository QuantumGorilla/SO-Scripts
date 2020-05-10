#! /bin/bash
#Nos posicionamos en la carpeta del usuario
cd ~
if [ -n "$1" ] && [ -n "$2" ]; then
	grupo=$1
	ruta=$2
	#Busca la ruta
	if [ -d $ruta ]; then
		cd $ruta
		#Busca el directorio
		if [ -d $grupo ]; then
			cd $grupo
			#Cuenta los ficheros que se encuentren 			dentro del grupo especificado
			archivos=$(find . -type f | wc -l)
			echo Número de archivos del grupo $grupo en 				$ruta es $archivos.
		else
			#Si no existe el archivo imprime el error
			echo "El grupo no existe"
		fi
	else
	#Si no existe la ruta imprime el error
	echo "La ruta no existe"
	fi
else
	echo No pasaron los correspondientes parametros: Grupo  		Ruta
fi
