# !/bin/bash
# Sentencias CASE

opcion=0

echo -e "Ejemplo sentencia CASE"
read -p "Ingrese una opción de la A-Z:" option
echo -e "\n"

case $option in
    "A") echo "\nOperación A";;
    "B") echo "Operación B";;
    [C-E]) echo "no esta implementada la operación";;
    "*") echo "opción incorrecta"
esac

