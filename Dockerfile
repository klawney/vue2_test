FROM node:current-alpine

COPY package.json /app/package.json

WORKDIR /app

# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Instalando dependências da aplicação e armazenando em cache.
# opcao no npm --silent
RUN npm install 

# start app
#CMD ["npm", "start"]
#CMD ["npm run", "serve"]