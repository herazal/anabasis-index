
# === SCRIPT DEPLOIEMENT GITHUB PAGES POUR ELEVENTY ===
# Chemin : deploy.ps1
# Usage : clic droit > Exécuter avec PowerShell
Write-Host "🧱 Passage à la branche gh-pages..."
git checkout gh-pages

Write-Host "⚙️  Build du site Eleventy..."
npm run build

Write-Host "📁 Copie du contenu de _site/ à la racine..."
Copy-Item -Path .\_site\* -Destination . -Recurse -Force

Write-Host "🧹 Suppression du dossier _site..."
Remove-Item -Recurse -Force .\_site\

Write-Host "📦 Commit et push vers GitHub Pages..."
git add .
git commit -m "Déploiement automatique du site statique pour GitHub Pages"
git push

Write-Host "✅ Déploiement terminé !"
Write-Host "🌍 Accède à ton site ici : https://herazal.github.io/anabasis-index/"
