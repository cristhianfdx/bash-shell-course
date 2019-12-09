# ! /bin/bash
# Programa para escribir en un archivo

echo "Escribir en un archivo"

echo "Valores escritos con echo" >> $1

#Adición multilinea
cat <<EOM >>$1
$2
EOM

