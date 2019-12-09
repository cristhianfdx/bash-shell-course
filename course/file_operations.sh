# ! /bin/bash
# Programa para ejecutar operaciones con un archivo

echo "Operaciones de un archivo"
mkdir -m 755 backup_scripts

echo -e "\nCopiar scripts del directorio actual al nuevo -backup_scripts-"
cp *.* backup_scripts/
ls -la

echo -e "\nMover directorio a otra ubicación: $HOME"
mv backup_scripts $HOME

echo -e "\nEliminar Archivos .txt"
rm *.txt
