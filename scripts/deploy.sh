#!/bin/bash

# Définition des couleurs ANSI
GREEN="\033[0;32m"  # Vert
RED="\033[0;31m"    # Rouge
RESET="\033[0m"     # Réinitialisation des couleurs

# Vérification des arguments
if [ -z "$1" ]; then
  echo -e "${RED}❌ Erreur : Vous devez fournir un message de commit.${RESET}"
  echo "Usage : npm run deploy -- \"Votre message de commit\""
  exit 1
fi

MESSAGE="$1"

# Exécuter la build
npm run build
if [ $? -ne 0 ]; then
  echo -e "${RED}❌ Erreur : La build a échoué.${RESET}"
  exit 1
fi
echo -e "${GREEN}✅ Build successful${RESET}"

# Ajouter les fichiers à Git
git add .
echo -e "${GREEN}✅ git add . successful${RESET}"

# Commit avec le message passé en argument
git commit -m "$MESSAGE"
if [ $? -ne 0 ]; then
  echo -e "${RED}❌ Erreur : Le commit a échoué.${RESET}"
  exit 1
fi
echo -e "${GREEN}✅ git commit successful${RESET}"

# Push sur le repo distant
git push
if [ $? -ne 0 ]; then
  echo -e "${RED}❌ Erreur : Le push a échoué.${RESET}"
  exit 1
fi
echo -e "${GREEN}✅ git push successful${RESET}"
