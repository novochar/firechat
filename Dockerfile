FROM node:17-alpine

WORKDIR /app
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH
COPY ./app/package.json /app/package.json
RUN npm install
RUN npm install react-scripts@3.3.1 -g
RUN mkdir /app/node_modules/.cache
RUN chown -R 777 /app/node_modules/.cache

# Inicializa a aplicação
CMD ["npm", "start"]