#!/bin/bash

# Fonction pour deviner le nombre de fichiers
guess_number_of_files() {
    local correct_answer=$(ls -1 | wc -l)
    local guess=0

    while [ $guess -ne $correct_answer ]; do
        echo "Combien de fichiers se trouvent dans ce répertoire ?"
        read guess

        if [ $guess -lt $correct_answer ]; then
            echo "Votre estimation est trop basse. Essayez encore."
        elif [ $guess -gt $correct_answer ]; then
            echo "Votre estimation est trop haute. Essayez encore."
        fi
    done

    echo "Félicitations! Vous avez deviné le nombre correct de fichiers: $correct_answer."
}

# Appeler la fonction pour démarrer le jeu
guess_number_of_files

