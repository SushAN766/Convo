# ===========================
# FRONTEND BUILD STAGE
# ===========================
FROM node:18 AS frontend

WORKDIR /app/frontend

COPY frontend/package*.json ./
RUN npm install

COPY frontend/ ./
RUN npm run build


# ===========================
# BACKEND STAGE
# ===========================
FROM node:18

WORKDIR /app

# Install backend dependencies
COPY package*.json ./
RUN npm install

# Copy full project
COPY . .

# Copy frontend build → correct path for server.js
COPY --from=frontend /app/frontend/dist ./frontend/dist

EXPOSE 5000

CMD ["node", "backend/server.js"]
