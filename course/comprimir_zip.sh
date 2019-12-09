# !/bin/bash
#Comprimir con pbzip

echo "Empaquetar con tar & gzip"
tar -cvf shell_course.tar *.sh
gzip shell_course.tar

echo "Empaquetar un solo archivo con ratio 9"
gzip -9 validate.sh

