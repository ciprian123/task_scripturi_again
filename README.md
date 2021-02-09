# Task scripturi
0.  Sa se scrie un script bash care redenumeste toate fisierele dintr-un folder dintr-o extensie in alta.
a) Scriptul primeste 3 argumente:
    - locatie folder
	- extensie care sa fie redenumita
	- noua extensie
    De exemplu:
    ./rename_script.sh  "/home/user/logs/"  ".log"  ".txt"
Scriptul va redenumi toate fisierele din folder-ul "/home/user/logs/" din ".log" in ".txt"


1.	Sa se scrie un bash script care:
a)	Verifica daca un sistem este de tip Debian/Ubuntu sau CentOS
b)	Va rula comenzile de “update” si “upgrade” conforme sistemului respectiv
c)	Va instala automat “git” si “vim”



2.	Sa se scrie un bash script care:
	Verifica daca un “group” denumit “devops” exista pe sistem:
-	daca exista sa se ruleze : 
    echo "DevOps group exists!"
-	altfel sa se creeze un group cu numele “devops”
	Verifica daca un user “engineer” exista pe sistem:
-	Daca exista sa se ruleze: 
    echo "User engineer already exists!"
-	altfel, sa se creeze user-ul si sa fie adaugat in group-ul “devops”


3.	Sa se scrie un bash script care:
a)	Primeste ca si argument numele la un fisier sau folder
b)	Sa faca “echo” daca aceasta este un fisier, folder, symlink etc. (tipul de fisier)
c)	Sa faca “echo” daca are permisii de executabil


4.	Sa se scrie un bash script care:
a)	Primeste ca si argument locatia la un folder/director
b)	Ne va arata cele mai mari 5 fisiere din folder-ul respective


5.	Sa se scrie un bash script care:
a)	Primeste un numar “N” ca si argument
b)	Se va duce pe “filesystem” N foldere in urma
c)	Exemplu: 
echo $(pwd)
/home/user/folder1/folder2/folder3/folder4/folder5
./move.sh 3
echo $(pwd)
/home/user/folder1/folder2/

* se lanseaza cu: source ./script5.sh
