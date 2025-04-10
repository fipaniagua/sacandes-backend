FROM node:23-slim

WORKDIR /app

ARG API_PORT=3000
ENV PORT=${API_PORT}

RUN npm install -g @nestjs/cli

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${API_PORT}

CMD ["sh", "-c", "npm run start:dev"]