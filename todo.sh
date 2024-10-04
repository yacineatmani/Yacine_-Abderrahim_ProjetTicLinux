#!/bin/bash

# Affiche un message de bienvenue
echo "Bienvenue dans votre gestionnaire de tâches!"

# Boucle infinie pour maintenir le programme en cours d'exécution
while true; do
    echo "
    1. Ajouter une tâche
    2. Afficher les tâches
    3. Quitter
    "

    # Demande à l'utilisateur de choisir une option
    echo "Choisissez une option (1/2/3): "
    read choix

    # Si l'utilisateur choisit d'ajouter une tâche
    if [ "$choix" = "1" ]; then
        echo "Entrez votre tâche:"
        read tache
        # Ajoute la tâche au fichier tasks.txt
        echo "$tache" >> tasks.txt
        echo "Tâche ajoutée!"

    # Si l'utilisateur choisit d'afficher les tâches
    elif [ "$choix" = "2" ]; then
        echo "Voici vos tâches:"
        # Affiche le contenu du fichier tasks.txt
        cat tasks.txt

    # Si l'utilisateur choisit de quitter
    elif [ "$choix" = "3" ]; then
        echo "Au revoir!"
        exit  # Quitte le script

    # Si l'utilisateur choisit une option invalide
    else
        echo "Option non valide. Veuillez réessayer."
    fi
done

