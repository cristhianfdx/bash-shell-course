# ! /bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0

instalar_postgres () {
    echo "Instalar postgres"
}

desinstalar_postgres () {
    echo "Desinstalar postgres"
}

generar_backup () {
    echo "Generar backup"
    echo "Directorio Respaldo: $1"
}

restaurar_backup () {
    echo "Restaurar backup"
    echo "Directorio restauracion: $1"
}

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
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3)
            read -p "Directorio backup" directorio
            generar_backup $directorio
            sleep 3
            ;;
        4)
            
            read -p "Directorio backup" directorio_res
            restaurar_backup $directorio_res
            sleep 3
            ;;
        5)
            echo -e "\nSalir"
            exit 0
            ;;
    esac
done
