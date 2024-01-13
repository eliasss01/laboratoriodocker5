# Usa un'immagine di base con Node.js
FROM node:19-alpine

# Imposta il directory di lavoro all'interno del container
WORKDIR /server

# Copia il file package.json nella directory di lavoro
COPY package.json .

# Esegui il comando per installare le dipendenze
RUN npm install

# Copia tutti i file presenti nella directory corrente nel container
COPY . .

# Esponi la porta su cui l'applicazione sarà in ascolto
EXPOSE 3000

# Comando da eseguire quando il container viene avviato
CMD ["node", "server.js"]
