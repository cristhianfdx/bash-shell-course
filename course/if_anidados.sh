# !/bin/bash/
# if anidados

note=0
continue=""

read -p "Indique cúal es su nota (1-9): " note
echo -e "\n"

if [ $note -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Continua en el siguiente nivel? (s-n):" continue
    if [ $continue == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros"    
    fi
else
    echo "el alumno reprueba la materia "
fi

