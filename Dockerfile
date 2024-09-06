# Utiliser une image officielle de Node.js comme image de base
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier tout le reste du projet dans le conteneur
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Démarrer l'application
CMD ["npm", "start"]

