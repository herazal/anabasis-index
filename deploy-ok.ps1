
# === SCRIPT POWERSELL FIABLE POUR DEPLOIEMENT GITHUB PAGES ===

Write-Host " Passage à la branche gh-pages..."
git checkout gh-pages

Write-Host "  Build du site Eleventy..."
npm run build

Write-Host " Copie du contenu de _site/ à la racine du projet..."
Copy-Item -Path ./_site/* -Destination . -Recurse -Force

Write-Host " Suppression du dossier _site..."
Remove-Item -Recurse -Force ./_site/

Write-Host " Mise à jour du remote vers le nouveau compte GitHub..."
git remote set-url origin https://github.com/anabasis-technology/anabasis-index.git

Write-Host " Ajout des fichiers au dépôt Git..."
git add .

Write-Host " Commit et push vers GitHub Pages..."
git commit -m 'Déploiement automatique après mise à jour du compte GitHub'
git push -u origin gh-pages

Write-Output " Nouveau site en ligne ici : https://anabasis-technology.github.io/anabasis-index/"
