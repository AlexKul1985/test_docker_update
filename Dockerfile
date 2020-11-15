FROM node:12
WORKDIR /usr/src/app
COPY ./src ./src
COPY package*.json ./

RUN npm install
# Если вы создаете сборку для продакшн
# RUN npm ci --only=production

# копируем исходный код
COPY . .

EXPOSE 8080
CMD [ "node", "./src/server.js" ]
