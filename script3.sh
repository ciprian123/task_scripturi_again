#!/bin/bash


# verfic daca am numar suficient de argumente
if [[ ! $# -eq 1 ]]; then
    echo "Numar insuficient de argumente!"
    exit
fi


fisier=$1

# afisez tipul fisierului, iar in cazul in care acesta nu este director, spun daca este executabil sau nu
echo $(file $fisier)

if [[ ! -d "$fisier" ]]; then
	if [[ -x "$fisier" ]]; then
		echo "Fisierul '$fisier' este executabil!"
	else
		echo "Fisierul '$fisier' nu este executabil!" 
	fi
fi
