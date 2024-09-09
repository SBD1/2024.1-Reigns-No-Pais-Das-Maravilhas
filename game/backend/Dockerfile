# Usando uma imagem oficial do Node.js como base
FROM node:16

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copiar os arquivos package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Copiar todo o código fonte para o contêiner
COPY . .

# Definir a porta que o contêiner vai expor
EXPOSE 3000

# Comando padrão para rodar a aplicação
CMD ["npm", "run", "start"]