# Imagem de Origem
FROM node:15.13-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /core
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH="./node_modules/.bin:$PATH"
# Instalando dependências da aplicação e armazenando em cache.
COPY . . 

RUN npm install

RUN npm run build

# Inicializa a aplicação
CMD ["npm", "start"]