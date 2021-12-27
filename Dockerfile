FROM node:17-alpine

WORKDIR /app
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH
COPY ./app/package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.3.1 -g --silent
# Inicializa a aplicação
CMD ["npm", "start"]