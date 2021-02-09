#!/bin/bash

# verfic daca am numar suficient de argumente
if [[ ! $# -eq 1 ]]; then
    echo "Numar insuficient de argumente!"
    exit
fi


cale_director=$1
# verific existenta directorului dat ca argument
if [[ ! -d $cale_director ]]; then
	echo "Nu exista directorul introdus"
    exit
fi


# afisez cele mai mari 5 fisiere din directorul dat ca argument
# caut fisierele fin cale firector si le afisez dimensiunea si path-ul, le sortez numeric descrescator si limitez afisarea la primele 5
find "$cale_director" -type f -printf '%s %p\n' | sort -nr | head -5
