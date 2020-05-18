#! /bin/bash
#Expresión regular para controlar que sea númerico
aux='^-?[0-9]+([.][0-9]+)?$'
if [ ! "$1" ]; then
	echo Archivo modificado
	find . -type f -printf "%p\n" | ls -t | head -10
	#Controlamos que el parámetro enviado es númerico
	elif ! [[ $1 =~ $aux ]]; then
		echo El parámetro enviado no es númerico
	#Controlamos que sea un solo parámetro enviado
	elif [ $# != 1 ]; then
		echo Se envió más de un parámetro
	else
	echo Archivo modificado
	find . -type f -printf "%p\n" | ls -t | head -$1
fi
