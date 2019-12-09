# ! /bin/bash/
# Uso de arrays

array_num=(1 2 3 4 5)
array_cad=(Cristhian, Pedro, Maria, Isabel)
array_range=({A..Z} {10..20})

#Imprimir todos los valores
echo "Array de numeros: ${array_num[*]}"
echo "Array de cadenas: ${array_cad[*]}"
echo "Array de rangos: ${array_range[*]}"

#Imprimir tamaño de los arrays
echo "Tamaño Array de numeros: ${#array_num[*]}"
echo "Tamaño Array de cadenas: ${#array_cad[*]}"
echo "Tamaño Array de rangos: ${#array_range[*]}"

#Posición especifíca
echo "Posición 3 Array de numeros: ${array_num[3]}"
echo "Posición 3 Array de cadenas: ${array_cad[3]}"
echo "Posición 3 Array de rangos: ${array_range[3]}"

#Añadir y eliminar valores
array_num[5]=6
unset array_num[0]
echo "Array de numeros: ${array_num[*]}"
echo "Tamaño Array de numeros: ${#array_num[*]}"

