# !/bin/bash
#Comprimir con pbzip

echo "Empaquetar con tar & pbzip2"
tar -cvf shell_course.tar *.sh
pbzip2 -f shell_course.tar

echo "Empaquetar con tar y pbzip2"
tar -cf *.sh -c > shell_course2.tar.bz2

