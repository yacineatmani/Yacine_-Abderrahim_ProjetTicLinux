#!/bin/bash

# Affiche un message de bienvenue
echo "Bienvenue dans votre gestionnaire de tâches!"

# Boucle infinie pour maintenir le programme en cours d'exécution
while true; do
    echo "
    1. Ajouter une tâche
    2. Afficher les tâches
    3. Modifier une tâche
    4. Effacer toutes les tâches
    5. Quitter
    "

    # Demande à l'utilisateur de choisir une option
    echo "Choisissez une option (1/2/3/4/5): "
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

    # Si l'utilisateur choisit de modifier une tâche
    elif [ "$choix" = "3" ]; then
        echo "Voici vos tâches:"
        cat tasks.txt
        echo "Entrez le numéro de la tâche que vous souhaitez modifier:"
        read numero

        # Vérifie si le numéro de tâche est valide
        if [ "$numero" -gt 0 ] && [ "$numero" -le $(wc -l < tasks.txt) ]; then
            echo "Entrez la nouvelle tâche:"
            read nouvelle_tache

            # Remplace la tâche existante par la nouvelle tâche
            sed -i "${numero}s/.*/$nouvelle_tache/" tasks.txt
            echo "Tâche modifiée!"
        else
            echo "Numéro de tâche invalide."
        fi

    # Si l'utilisateur choisit d'effacer toutes les tâches
    elif [ "$choix" = "4" ]; then
        # Efface le contenu du fichier tasks.txt
        > tasks.txt
        echo "Toutes les tâches ont été effacées."

    # Si l'utilisateur choisit de quitter
    elif [ "$choix" = "5" ]; then
        echo "Au revoir!"
        exit  # Quitte le script

    # Si l'utilisateur choisit une option invalide
    else
        echo "Option non valide. Veuillez réessayer."
    fi
done

