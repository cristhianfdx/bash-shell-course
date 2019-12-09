# ! bash/bin
# read with echo programming

option=0
backup_name=""

echo "Programa de utilidades postgres"
echo -n "Ingresar opción:"
read
option=$REPLY
echo -n "Ingresar nombre archivo backup:"
read
backup_name=$REPLY
echo "Opción: $option, backup: $backup_name"
