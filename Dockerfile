FROM node:18 AS frontend

WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ ./
RUN npm run build

FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY backend ./backend
COPY .env ./

COPY --from=frontend /app/frontend/dist ./frontend/dist

EXPOSE 5000

CMD ["node", "backend/server.js"]
