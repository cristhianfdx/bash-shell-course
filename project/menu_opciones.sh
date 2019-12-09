# ! /bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0

while :
do
    #Limpiar pantalla
    clear
    #Desplegar menú de opciones
    echo "-------------------------------------------"
    echo "PGUTIL - Programa de utilidades de Postgres"
    echo "-------------------------------------------"
    echo "            MENÚ                           "
    echo "-------------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Generar Backup"
    echo "4. Restaurar backup"
    echo "5. Salir"

    #Leer opción seleccionada por el usuario"
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalar postgres..."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalar postgres..."
            sleep 3
            ;;
        3)
            echo -e "\nGenerar backup..."
            sleep 3
            ;;
        4)
            echo -e "\nRestaurar backup..."
            sleep 3
            ;;
        5)
            echo -e "\nSalir"
            exit 0
            ;;
    esac
done
