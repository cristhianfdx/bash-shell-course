# !/bin/bash/
# Expresiones condicionales

edad=0
pais=""
path=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su país:" pais
read -p "Ingrese el path del archivo:" path

echo -e "\nExpresiones con números"

if [ $edad -lt 10 ]; then
    echo "La persona es un niño/a"
elif [ $edad -ge 10 ]; then
    echo "la persona se trata de un adolecente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones con cadenas"

if [ $pais == "USA" ]; then
    echo "La persona es americana"
elif [ $pais == "ECU" ] || [ $pais == "COL" ]; then
    echo "la persona es suramericana"
else
    echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones con archivos"

if [ -d $path ]; then
    echo "El directorio existe"
else
    echo "El archivo no existe"
fi

