# ! /bin/bash
# Programa para leer un archivo

echo "Leer un archivo"
cat $1
echo -e "\nAlmacenar en una variable"
value=`cat $1`
echo "valor: $value"

#Uso de IFS (Internal File Separator) para evitar el recorte de espacios en blanco al inicio o final
echo -e "\nLeer Archivos linea a linea"

while IFS= read linea 
do
    echo "$linea"
done < $1


