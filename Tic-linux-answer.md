exercice Tic linux


Exercices de base (Partie 1) :
 

Exercice 1 : Créer un dossier ‘exo1’ à l’intérieur un fichier ‘monfichier.txt’.
***mkdir exo1/monfichier.txt***

Exercice 2:  Affiche moi le chemin absolu du dossier courant.
***pwd***

Exercice 3 : Créer un dossier ‘exo2’ et dans ce dossier exo2 un dossier ‘exo2Bis’ en une seule ligne de code.
***mkdir -p exo2/exo2Bis\n\n***


Exercices de base (Partie 2) :

Exercice 3 : Recréer votre structure comme le screen.

***mkdir -p exo3/public/css exo3/public/js && touch exo3/public/css/style.css exo3/public/js/main.js exo3/index.html\n***

Exercice 4 : Refaire l’exo 3 en une seule ligne de code
***mkdir -p exo3/public/css exo3/public/js && touch exo3/public/css/style.css exo3/public/js/main.js exo3/index.html\n***

Exercice 5 : Recréer votre structure comme le screen.
***mkdir -p autreDossier dossierAutre/{encoreUn,encoreUn2,encoreUn3/{encoreUn,ledernier,monautreDossier}} monautredossier/{dossier1/{dossier1bis1,dossier1bis2/dossier1bis3},dossier2} sousDossier***

Exercice : Reprendre l’exo 4 télécharger une image qu’on met dans Download Se mettre dans le dossier Documents et sans se déplacer dans le dossier Download il faudra déplacer l’image qui s’y trouve jusqu’au dossier img de votre structure habituel.

***mv ~/Downloads/mon_image.jpg ~/exo/public/img/***


Exercice : Reprendre votre structure ‘exo4’ et en vous mettant dans le dossier Documents trouver le moyen d’arriver à ce résultat avec les commandes apprises en 1 ligne.

***mkdir -p public/{css,img/bg,js} && touch index.html public/css/styles.css public/img/bg.jpeg public/img/bg/bg.jpeg public/js/main.js***




EXO  Reproduit ceci en une seule ligne : 




***mkdir -p exo/public/{assests/{background,logo,user},css,js} && touch exo/index.html exo/public/assests/background/{bg.jpg,font.jpg} exo/public/assests/logo/logo{,Dark,White}.png exo/public/assests/user/user{1..3}.jpg***

EXO  Reproduit ceci en une seule ligne : 



***mkdir -p exo/batiment/{etage1,etage2}/{appartement1,appartement2,appartement3,appartement4}/{chambre,cuisine,salledebain,salon}***

EXO  (En une seule ligne) a partir du dossier BATIMENT, vous aller:

Crée 4 dossiers au même niveau que bâtiment. 

(Attention: les dossiers ne sont pas dans bâtiments, ils sont au même niveau mais vous devez lancé votre commande en étant dans le dossier bâtiment) 

Les dossiers se nomment stock-1, stock-2, stock-3, stock-4.

Dans chaque dossier vous crée les fichier suivant. “lit.txt”, “frigo.txt”,  “sofa.txt", "baignoire.txt", “meridienne.txt”, "gaziniere.txt", “lavabo.txt”, “garde-robe.txt”.
***mkdir -p stock-{1..4} && touch stock-{1..4}/{lit,frigo,sofa,baignoire,meridienne,gaziniere,lavabo,garde-robe}.txt***

GIT

***
commit 569c8e438afbb5cda00e2bffe8f13b8033091039 (HEAD -> master)
Author: yacineatmani <yacineatmani1080@gmail.com>
Date:   Fri Oct 4 13:34:33 2024 +0200

    Ajout de la date de naissance dans exo1.txt

commit b85c94f1c2095ff760b29fe095214f1f95921298
Author: yacineatmani <yacineatmani1080@gmail.com>
Date:   Fri Oct 4 12:51:09 2024 +0200

    Ajout de exo1.txt avec nom et prénom
(END)

***
*** commit 152c758edab5a1a2404b742c3f06be4a93ee2b3b (HEAD -> master)
Author: yacineatmani <yacineatmani1080@gmail.com>
Date:   Fri Oct 4 13:42:04 2024 +0200

    Ajout du fichier style.css et d'une image dans assets
(END)

***

exercices github:

https://github.com/yacineatmani/github-exo


script partie 1 :
Voici les scripts pour chaque exercice que tu peux créer dans ton terminal Ubuntu :

`hello.sh` :

```bash
#!/bin/bash
echo "Hello World !"
```

`list_files.sh` :

```bash
#!/bin/bash
ls -al
```

`create_file.sh` :

```bash
#!/bin/bash
echo "Entrez le nom du fichier à créer (avec l'extension) :"
read filename
touch "$filename"
echo "Fichier '$filename' créé."
```

Crée un fichier de script nommé `create_structure.sh` :

```bash
#!/bin/bash
mkdir -p projet/dossier1
mkdir -p projet/dossier2/sous_dossier
touch projet/fichier.txt
echo "Arborescence créée."
```


script partie 2 :

somme.sh :
#!/bin/bash
echo "Entrez le premier nombre :"
read nombre1
echo "Entrez le deuxième nombre :"
read nombre2
somme=$((nombre1 + nombre2))
echo "La somme de $nombre1 et $nombre2 est : $somme"

check_file.sh :
#!/bin/bash
echo "Entrez le nom du fichier à vérifier :"
read filename

if [[ -e "$filename" ]]; then
    echo "Le fichier '$filename' existe."
else
    echo "Le fichier '$filename' n'existe pas."
fi

confirm_create_file.sh :
#!/bin/bash
echo "Entrez le nom du fichier à créer :"
read filename
echo "Êtes-vous sûr de vouloir créer le fichier '$filename' ? (o/n)"
read confirmation

if [[ "$confirmation" == "o" || "$confirmation" == "O" ]]; then
    touch "$filename"
    echo "Fichier '$filename' créé."
else
    echo "Création de fichier annulée."
fi

create_multiple_files.sh :
#!/bin/bash
echo "Combien de fichiers souhaitez-vous créer ?"
read count
echo "Entrez le nom de base pour les fichiers :"
read base_name

for ((i=1; i<=count; i++)); do
    touch "${base_name}${i}"
done

echo "Fichiers créés :"
for ((i=1; i<=count; i++)); do
    echo "${base_name}${i}"
done




