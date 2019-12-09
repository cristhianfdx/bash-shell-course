# !/bin/bash
#Transferir archivos por la red con rsync, utilizando las opciones de empaquetamiento para mejorar la velocidad de transferencia

echo "Empaquetando todos los scripts y transferirlos a otro equipo con rsync"

read -p "Ingrese el host:" host
read -p "Ingrese el usuario:" user
echo -e "\nEn este momento se precedera a empaquetar la carpeta y transferirla"
rsync -avz $(pwd) $user@$host:/home/user/directory

