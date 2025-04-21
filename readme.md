# download_images.sh

Ce script permet de télécharger en masse des images à partir d'une liste d'URLs.

## Prérequis

- **bash** (présent par défaut sur la plupart des systèmes Unix/Linux/macOS)
- **curl** (installé par défaut sur macOS et la plupart des distributions Linux)

## Utilisation

1. **Prépare un fichier texte** contenant une URL d'image par ligne, par exemple :  
   `fichier_urls.txt`
   ```
   https://exemple.com/image1.png
   https://exemple.com/image2.jpg
   ```

2. **Lance le script** en lui passant le chemin du fichier en argument :

   ```sh
   ./download_images.sh "chemin/vers/fichier_urls.txt"
   ```

   > **Astuce** : Si le chemin contient des espaces, mets-le entre guillemets.

3. **Les images seront téléchargées dans le dossier `outputs/`** (créé automatiquement s'il n'existe pas).

## Exemple

```sh
./download_images.sh "Mon Drive/Travail/FitLinks/hopp-wix/formes.txt"
```

## Remarques

- Les fichiers sont nommés automatiquement à partir de l’URL.  
- Si le nom ne peut pas être déterminé, un nom générique sera utilisé (ex : `image_1681234567890.png`).
- Les lignes vides dans le fichier sont ignorées.

---
