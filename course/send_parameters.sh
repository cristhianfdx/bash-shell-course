# !bin/bash
# Send parameters and options

echo "Programa opciones"
echo "Opción #1 enviada: $1"
echo "Opción #2 enviada: $2"
echo "opciones enviadas: $3"
echo -e "\n"
echo "recuperar valores"
while [ -n "$1" ]
do
case "$3" in
-a) echo "-a opcion utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$4 no es una opcion";;
esac
shift
done

