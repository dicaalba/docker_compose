# Creamos un proyecto de nodejs
npm init -y

# Instalamos las dependencias
npm i express mongoose 

# Express es un framework para nodejs y mongoose es una librería para trabajar con mongodb

# Creamos una carpeta src y dentro de ella un archivo index.js y otro archivo db.js
mkdir src
touch index.js
touch db.js

# Creamos el archivo dockerfile
touch Dockerfile

# Ejecutamos el comando docker build -t nombre_imagen .
docker build -t nodejs18 .

# Ejecutamos el comando docker run -p 3000:3000 nombre_imagen
docker run -p 3000:3000 nodejs18

# Creamos un archivo docker-compose.yml
touch docker-compose.yml

# Para buildear el dockercompose
docker-compose build

# Para ejecutar el dockercompose
docker-compose up

# Para obtener el logs del dockercompose
docker-compose logs

# Para obtener el logs de la aplicación
docker logs nodejs18  

# Para obtener el logs de la base de datos
docker logs mongodb

