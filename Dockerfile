# Use a imagem base do Node.js
FROM node:14

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código da aplicação
COPY . .

# Exponha a porta que a aplicação vai rodar
EXPOSE 3000

# Defina o comando para iniciar a aplicação
CMD ["node", "app.js"]
