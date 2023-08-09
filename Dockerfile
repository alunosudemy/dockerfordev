# Use a imagem base do Alpine Linux
FROM node:14-alpine
# Define o diretório de trabalho
WORKDIR /src
# Copia os arquivos do diretório local para o diretório de trabalho no contêiner
COPY . .
# Instala as dependências do Node.js
RUN npm install
# Expõe a porta 8080
EXPOSE 8080
# Comando para iniciar o aplicativo quando o contêiner for executado
CMD ["node", "app.js"]
