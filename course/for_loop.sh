# ! /bin/bash
# for loop

array_num=(1 2 3 4 5 6 7)

for num in ${array_num[*]}
do
    echo "numero: $num"
done

for name in "Cristhian" "Luis" "Pedro" "Maria"
do
    echo "Nombre: $name"
done

for fil in $(ls)
do
    echo "Archivo: $fil"
done

for ((i=1; i<10; i++))
do
    echo "Numero: $i"
done
