# 🚀 Script de Déploiement Automatisé

Ce dépôt vous permet d'automatiser le build et le déploiement d'un projet **Node.js** en exécutant une seule commande, au lieu de devoir taper manuellement `npm run build`, `git add .`, `git commit -m` et `git push` à chaque modification.

## 📌 Installation

### 1. Créer un dossier `scripts`

À la racine de votre projet **VSCode**, ouvrez un terminal et tapez :

```bash
mkdir -p scripts
cd scripts
```

### 2. Cloner ce dépôt pour récupérer `deploy.sh`

```bash
git clone git@github.com:K-sel/deploy.sh.git
```

### 3. Rendre le script exécutable

```bash
chmod +x scripts/deploy.sh
```

### 4. Ajouter le script dans `package.json`

Ouvrez votre fichier `package.json` et ajoutez la ligne suivante dans la section `"scripts"` :

```json
"scripts": {
  "deploy": "./scripts/deploy.sh"
}
```

## 🚀 Utilisation

Une fois tout installé et configuré, vous pouvez déployer votre projet en une seule commande :

```bash
npm run deploy -- "Votre message de commit"
```

### 🛠 Explication du processus automatisé :

1. **Build du projet** : `npm run build`
2. **Ajout des fichiers modifiés** : `git add .`
3. **Commit des modifications** avec votre message personnalisé : `git commit -m "Votre message"`
4. **Push des changements** vers le dépôt distant : `git push`

## ✅ Pré-requis

- Node.js installé
- npm configuré
- Un dépôt Git initialisé et configuré

## 🎯 Objectif

Ce script vous permet de **gagner du temps** en automatisant les étapes de déploiement, ce qui est particulièrement utile lors des examens ou des livraisons rapides de projets.

## 📞 Support

Si vous avez des questions ou des suggestions, n’hésitez pas à ouvrir une issue sur le dépôt GitHub.

🚀 Bon déploiement !

