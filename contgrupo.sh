#! /bin/bash
echo Fecha actual:
date
#Nos posicionamos en la carpeta del usuario
cd ~
#Nombre de la carpeta que va a buscar
echo Escriba el nombre del grupo
read grupo
#Comprueba que no este vacia la variable
while [[ -z $grupo ]]
do
echo Por favor, escriba el nombre del grupo
read grupo
done
#Ruta de la carpeta
echo Escriba la ruta del directorio
read ruta
#Comprueba que la ruta no este vacia
while [[ -z $ruta ]]
do
echo Por favor, escriba la ruta del directorio
read ruta
done
#Busca la ruta
if [ -d $ruta ]
then
cd $ruta
#Busca el directorio
if [ -d $grupo ]
then
cd $grupo
echo El número de ficheros en $grupo es:
find . -type f | wc -l #cuenta solo ficheros.
else
echo "El archivo no existe"
fi
else
echo "La ruta no existe"
fi
