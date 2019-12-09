# !bin/bash
# Regex Programm

# ^.- Caracter que representa el inicio de la expresión regular.
# $.- Caracter que representa el final de la expresión regular.
# *.- Caracter que representa cero o más ocurrencias de la expresión
# +.- Caracter que representa una o más ocurrencias de la expresión.
# {n}.-Representa n veces de una expresión.
# [ ] .- Representa un conjunto de caracteres, 
# por ejemplo: [a-z] representa las letras del abecedario de la a a la z.

cc_regex='^[0-9]{10}$'
pais_regex='^EC|CO|US$'
fecha_regex='^19|20[0-8]{2}[1-12][1-31]$'

echo "Expresiones Regulares"
read -p "Ingresar un CC: " cc
read -p "Ingresar país [EC, CO, US]:" pais
read -p "Ingresar fecha [yyyyMMDD]:" fecha

if [[ "$cc" =~ $cc_regex ]]
then
echo "Identificación válida"
else
echo "Identificación inválida"
fi

if [[ "$pais" =~ $pais_regex ]]
then
echo "País válido"
else
echo "País inválido"
fi

if [[ "$fecha" =~ $fecha_regex ]]
then
echo "Fecha válida"
else
echo "Fecha inválida"
fi
