#! /bin/bash
#Nos posicionamos en la carpeta del usuario
cd ~
#Expresión regular para controlar que sea númerico
aux='^-?[0-9]+([.][0-9]+)?$'
if [ ! "$1" ]; then
	echo Segundos desde la última modificación / Archivo modificado
	find . -type f -printf "%T@ %p\n" | head -10
	#Controlamos que el parámetro enviado es númerico
	elif ! [[ $1 =~ $aux ]]; then
		echo El parámetro enviado no es númerico
	#Controlamos que sea un solo parámetro enviado
	elif [ $# != 1 ]; then
		echo Se envió más de un parámetro
	else
	echo Segundos desde la última modificación / archivo modificado
	find . -type f -printf "%T@ %p\n" | head -$1
fi
