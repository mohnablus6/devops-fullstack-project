FROM node:18

WORKDIR /app

COPY backend/package.json backend/server.js ./
RUN npm install

COPY frontend ./frontend

EXPOSE 3000

VOLUME /app/data

CMD ["npm", "start"]

