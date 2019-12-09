# !/bin/bash/
# if conditional program


note_class=0
age=0

echo "Condicional IF"
read -n1 -p "Ingrese nota (1-9): " note_class
echo -e "\n"

if (( note_class >=7 ))
then
    echo "Aprueba la materia"
else
    echo "Reprueba la materia"
fi

read -p "Indique cúal es su edad: " age

if [ $age -le 18 ]; then
    echo "La persona no puede sufragar"
else
    echo "La persona puede sufragar"
fi

