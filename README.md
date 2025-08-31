# Convo

**Convo** is a **real-time chat application** built with the **MERN stack**, **Socket.io**, **TailwindCSS**, and **Daisy UI**. It enables users to chat instantly, manage accounts securely with **JWT**, and enjoy a seamless user experience with **Zustand** state management.

---

## Features

-  **Tech Stack:** MERN + Socket.io + TailwindCSS + Daisy UI  
-  **Authentication & Authorization** with JWT  
-  **Real-time messaging** powered by Socket.io  
-  **Online user status** using Socket.io and React Context  
-  **Global state management** with Zustand  
-  **Error handling** on both server and client  
-  **Deployment-ready** — deploy like a pro for FREE!  
-  And much more…

---

## Setup

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
### Install dependencies

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

## 3. Build & Start the App

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
> The app should now be running locally. Open your browser and visit `http://localhost:5000` (or the frontend URL if served separately).
