# Utilise l'image officielle de Node.js version 14
FROM node:14

# Définit le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copie le package.json et le package-lock.json
COPY package*.json ./

# Installe les dépendances de l'application
RUN npm install

# Copie les fichiers de l'application dans le conteneur
COPY . .

# Expose le port sur lequel l'application écoute
EXPOSE 3000

# Définit la commande par défaut pour exécuter l'application
CMD ["npm", "start"]




