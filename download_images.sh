#!/bin/bash

# Vérifie qu'un fichier a été passé en argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 fichier_urls.txt"
    exit 1
fi

input_file="$1"

# Vérifie que le fichier existe
if [ ! -f "$input_file" ]; then
    echo "Le fichier '$input_file' n'existe pas."
    exit 1
fi

# Crée le dossier outputs s'il n'existe pas
mkdir -p outputs

# Télécharge chaque URL
while IFS= read -r url; do
    # Ignore les lignes vides
    [ -z "$url" ] && continue
    # Récupère le nom du fichier à partir de l'URL
    filename=$(basename "${url%%\?*}")
    # Si le nom est vide, crée un nom générique
    [ -z "$filename" ] && filename="image_$(date +%s%N).png"
    # Ajoute le chemin outputs/
    output_path="outputs/$filename"
    echo "Téléchargement de $url → $output_path"
    curl -L -o "$output_path" "$url"
done <"$input_file"
