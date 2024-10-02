#!/bin/bash

echo "Bienvenue dans votre gestionnaire de tâches!"

while true; do
    echo "
    1. Ajouter une tâche
    2. Afficher les tâches
    3. Quitter
    "
echo "Choisissez une option (1/2/3): "
read choix
if [ "$choix" = "1" ]; then
        echo "Entrez votre tâche:"
        read tache
        echo "$tache" >> tasks.txt
        echo "Tâche ajoutée!"
 elif [ "$choix" = "2" ]; then
        echo "Voici vos tâches:"
        cat tasks.txt

 elif [ "$choix" = "3" ]; then
        echo "Au revoir!"
        exit
else
        echo "Option non valide. Veuillez réessayer."
    fi
done
