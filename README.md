# Projet : Examen CI/CD avec JSON Server

## Description

Ce projet est une application **JSON Server** qui permet de gérer des données via une **API REST**. Elle a été **conteneurisée** à l'aide de **Docker** et gérée via **Git** pour le suivi de version.

---

## Installation

### Cloner le dépôt

Clonez le dépôt GitHub et installez les dépendances en suivant ces étapes :

```bash
git clone https://github.com/jrmy17/examenCICD.git
cd examenCICD
npm install
```

---

## Utilisation avec Docker

Pour exécuter l'application dans un conteneur Docker, suivez ces étapes :

### Construire l'image Docker

Créez une image Docker à partir du `Dockerfile` présent dans le projet :

```bash
docker build -t examen_cicd .
```

### Exécuter l'image Docker

Lancez un conteneur Docker à partir de l'image créée et exposez-le sur le port 3000 :

```bash
docker run -p 3000:3000 examen_cicd
```

### Résultat :

L'application sera disponible sur l'URL suivante :  
`http://localhost:3000`

---

## Documentation des étapes suivies dans chaque partie du projet

### Initialisation du projet avec Git

1. Cloner le dépôt JSON Server :

   ```bash
   git clone https://github.com/typicode/json-server.git
   cd json-server
   ```

2. Initialiser un nouveau dépôt Git :

   ```bash
   git init
   ```

3. Configurer le fichier .gitignore :

   - Éditer le fichier .gitignore pour exclure le dossier node_modules

   ```bash
   git add .gitignore
   git commit -m "Ajout du fichier .gitignore"
   ```

4. Configurer le dépôt distant et pousser les modifications :
   ```bash
   git remote add origin https://github.com/jrmy17/examenCICD.git
   git branch -M main
   git push -u origin main
   ```

### Création du Dockerfile et conteneurisation

1. Créer le Dockerfile :

   ```bash
   touch Dockerfile
   ```

2. Construire l'image Docker :

   ```bash
   docker build -t examen_cicd .
   ```

3. Exécuter le conteneur Docker :

   ```bash
   docker run -p 3000:3000 examen_cicd
   ```

4. Ajouter et commiter le Dockerfile dans Git :

   ```bash
   git add Dockerfile
   git commit -m "Ajout du Dockerfile pour conteneuriser l'application"
   ```

5. Pousser les modifications vers le dépôt distant :
   ```bash
   git push
   ```

### Création du fichier README.md

1. Créer le fichier README.md :

   ```bash
   touch README.md
   ```

2. Ajouter et commiter le fichier README.md dans Git :
   ```bash
   git add README.md
   git commit -m "Ajout de la documentation dans le README"
   git push
   ```

---

## Documentation des commandes utilisées

### Commandes Git utilisées pour la gestion du projet :

```bash
git init
git add .
git commit -m "Initialisation du projet avec json-server"
git remote add origin https://github.com/jrmy17/examenCICD.git
git branch -M main
git push -u origin main
```

Détail des commandes Git :

- `git init` : Initialise un nouveau dépôt Git dans le répertoire courant.
- `git add .` : Ajoute tous les fichiers modifiés à l'index Git.
- `git commit -m "message"` : Crée un nouveau commit avec les changements indexés.
- `git remote add origin URL` : Ajoute un dépôt distant nommé "origin".
- `git branch -M main` : Renomme la branche principale en "main".
- `git push -u origin main` : Pousse les commits locaux vers la branche "main" du dépôt distant.

### Commandes Docker pour conteneuriser et exécuter l'application :

```bash
docker build -t examen_cicd .
docker run -p 3000:3000 examen_cicd
```

Détail des commandes Docker :

- `docker build -t examen_cicd .` : Construit une image Docker à partir du Dockerfile dans le répertoire courant et la nomme "examen_cicd".
- `docker run -p 3000:3000 examen_cicd` : Exécute un conteneur basé sur l'image "examen_cicd", en mappant le port 3000 du conteneur au port 3000 de l'hôte.

---

