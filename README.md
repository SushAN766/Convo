<p align="center">
  <img src="frontend/src/assets/convo-banner.png" alt="Convo Banner" width="100%">
</p>






<p align="center">
A modern real-time chat application built using the MERN stack, Socket.io, TailwindCSS, and DaisyUI.
</p>


---

##  Features

-  **Tech Stack:** MongoDB, Express.js, React, Node.js  
-  **JWT Authentication**  
-  **Real-time chat** using Socket.io  
-  **Online user status**  
-  **Global state management** with Zustand  
-  **TailwindCSS + DaisyUI UI components**  
-  Clean error handling  
-  **Docker support for easy deployment**  
-  Deploy easily on Render / Railway

---

## Local Setup

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/convo.git
cd convo
```

### 2. Setup environment variables

Create a `.env` file in the **backend** folder:

```env
PORT=5000
MONGO_DB_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
NODE_ENV=development
```
### 3. Install dependencies

### Backend
```bash
cd backend
npm install
```
### Frontend Setup

```bash
cd frontend
npm install
```

## Build & Start the App

### Build frontend
```bash
cd frontend
npm run build
```
### Start backend server
```bash
cd backend
npm start
```
> The app should now be running locally.
> Open your browser and visit `http://localhost:5000`

---

#  Docker Setup

Convo includes a production-ready Docker configuration.

---

## 1. Build Docker Image

From the project root:

```bash
docker build -t convo-app .
```
## 2. Run the App in Docker
```bash
docker run -p 5000:5000 --env-file .env convo-app
```
Visit Your App
[http://localhost:5000](http://localhost:5000)

---

# Docker Compose (Recommended)

Create a `docker-compose.yml` file:

```yaml
services:
  backend:
    build: .
    container_name: convo-backend
    ports:
      - "5000:5000"
    env_file: .env
    restart: unless-stopped
```

##  Run it:

```bash
docker-compose up --build

```
##  .dockerignore

Create a `.dockerignore` file:

```lua
node_modules
frontend/node_modules
backend/node_modules
.git
.gitignore
.env
dist
npm-debug.log
yarn-error.log
.DS_Store
```
---

# Deployment (Render / Railway)

Render and Railway automatically detect your `Dockerfile`.

### Steps:

1. Connect your GitHub repository  
2. Choose **Deploy from Dockerfile**  
3. Add your environment variables  
4. Deploy the service  
5. Enjoy automatic **HTTPS + hosting** 

---

#  Contributing

Pull requests are welcome!  
For major changes, please open an issue first to discuss the proposal.

---
<p align="center"> <b>Convo — Simple. Fast. Real-Time.</b> </p>

