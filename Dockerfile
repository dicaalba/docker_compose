# Indicamos que estamos construyendo una imagen basada en node:14
FROM node:18

# Si no existe el directorio /usr/src/app creamoslo
RUN mkdir -p /usr/src/app 

# Indicamos que el directorio de trabajo es /usr/src/app
WORKDIR /usr/src/app

# Copiamos el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instalamos las dependencias de nuestro proyecto y asegura que no se guarde la caché de npm en la imagen
RUN npm install && npm cache clean --force

# Copiamos eL directorio de trabajo al directorio de destino
COPY . .

# Especificamos el puerto de exposición
EXPOSE 3000

# Comando que se ejecutará cuando se ejecute el contenedor
CMD ["npm", "start"]

