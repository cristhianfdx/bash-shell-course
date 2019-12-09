# !/bin/bash/
# if conditional && if-else program

age=0

read -p "Indique cúal es su edad: " age

if [ $age -le 18 ]; then
    echo "La persona es adolecente"
elif [ $age -ge 19 ] && [ $age -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto-mayor"
fi

