# ! /bin/bash
# Programa para manejar las utilidades de Postgres

opcion=0
fecha=`date +%Y%m%d`

instalar_postgres () {
    echo -e "\nVerificar instalación de postgres..."
    verify_install=$(which psql)

    if [ $? -eq 0 ]; then
        echo -e "\nPostgres ya se encuentra instalado..."
    else
        read -s -p "Ingrese contraseña superusuario:" password
        echo -e "\n"
        read -s -p "Ingresar contraseña para postgres:" pass_pg
        echo -e "\n"
        echo "$password" | sudo -S apt update
        echo "$password" | sudo apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$pass_pg}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

desinstalar_postgres () {
   echo -e "\n"
   read -s -p "Ingrese contraseña superusuario:" password
   echo -e "\n"
   echo "$password" | sudo -S systemctl stop postgresql.service
   echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
   echo "$password" | sudo -S rm -r /etc/postgresql
   echo "$password" | sudo -S rm -r /etc/postgresql-common
   echo "$password" | sudo -S rm -r /var/lib/postgresql
   echo "$password" | sudo -S userdel -r postgresql
   echo "$password" | sudo -S groupdel postgresql

   read -n1 -s -r -p "Presione [ENTER] para continuar..."
}

generar_backup () {
    echo "Listar bases de datos..."
    sudo -u postgres psql -c "\l"
    read -p "Elegir base de datos a respaldar:" database
    echo -e "\n"

    if [ -d "$1" ]; then
        echo "Establecer permisos al directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando respaldo..."
        sudo -u postgres pg_dump -Fc $database > "$1/database$fecha.bak"
        echo "Respaldo realizado correctamente en la ubicación: $1/database$fecha.bak"
    else
        echo "El directorio no existe"
    fi
    read -n1 -s -r -p "Presione [ENTER] para continuar..."

}

restaurar_backup () {
    echo "Listar respaldos..."
    ls -la $1
    read -p "Elegir el respaldo a restaurar:" respaldo
    echo -e "\n"
    echo "Listar bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Ingrese el nombre de la base de datos a restaurar:" database_res
    #Verificar si la db existe
    verify_db=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $database_res)

    if [ $? -eq 0 ]; then
        echo "Restaurando la db destino: $database_res"
    else
        sudo -u postgres psql -c "CREATE DATABASE $database_res"
    fi

    if [ -f "$1/$respaldo" ]; then
        echo "Restaurando respaldo..."
        sudo -u postgres pg_restore -Fc -d $database_res "$1/$respaldo"
        echo "Listar bases de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo no existe: $respaldo"
    fi
    read -n1 -s -r -p "Presione [ENTER] para continuar..."
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
            read -p "Directorio backup:" directorio
            generar_backup $directorio
            sleep 3
            ;;
        4)

            read -p "Directorio de respaldos:" dir_backup
            restaurar_backup $dir_backup
            sleep 3
            ;;
        5)
            echo -e "\nSalir"
            exit 0
            ;;
    esac
done
