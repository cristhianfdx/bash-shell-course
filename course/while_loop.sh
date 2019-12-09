# ! /bin/bash
# while loop

num=1

while [ $num -ne 10 ]
do
    echo "imprimiendo $num veces"
    num=$(( num+1 ))
done

