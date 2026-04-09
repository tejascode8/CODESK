# Overview

CODESK is a real-time collaborative code editor web application featuring user authentication, live collaborative editing with operational transforms using Yjs, and seamless integration with the Monaco Editor. The backend is built with Express and Socket.IO to handle real-time communication.

---

## Features

- **Real-time Collaborative Editing** using [Yjs](https://github.com/yjs/yjs) and [Socket.IO](https://socket.io/)
- **User Authentication** for secure access and collaboration
- **Monaco Editor Integration** for rich code editing experience (the editor behind VS Code)
- **Backend API** powered by Express.js
- **Static File Serving** for frontend assets using Express
- **Docker Support** for containerized deployments

---

## Tech Stack

- **Frontend:** React, Vite, Tailwind CSS, Monaco Editor
- **Backend:** Node.js, Express.js, Socket.IO
- **Collaboration:** Yjs for real-time operational transforms
- **Containerization:** Docker

## Folder Structure

```
CODESK
    ├── backend
    ├── frontend
    └── README.md
```

## Backend

```
backend
    ├── mode_modules
    ├── .gitignore
    ├── package-lock.json
    ├── package.json
    └── server.js
```

### Scripts

- `npm run dev`  
  Starts the development server with live reloading, allowing you to test your app locally.

### Dependencies

- `npm init -y`  
  Initializes a new Node.js project with default settings.

- `npm install express`  
  Installs Express.js, a fast, minimal web framework for building the backend server.

- `npm install socket.io`  
  Adds Socket.IO for real-time, bi-directional communication between client and server.

- `npm install y-socket.io`  
  Integrates Yjs with Socket.IO to enable real-time collaborative editing features.

## Frontend

```
frontend
    ├── node_modules
    ├── src
    │   ├── App.css
    │   ├── App.jsx
    │   └── main.jsx
    |
    ├── .gitignore
    ├── eslint.config.js
    ├── index.html
    ├── package-lock.json
    ├── package.json
    ├── README.md
    └── vite.config.js
```

### Scripts

- `npm run dev`  
  Starts the development server with live reloading, allowing you to test your app locally.

### Dependencies

- `npm create vite@latest`  
  Initializes the project with Vite, a fast frontend build tool and development server.

- `npm install tailwindcss @tailwindcss/vite`  
  Adds Tailwind CSS for utility-first styling and integrates it with Vite.

- `npm install @monaco-editor/react`  
  Installs the React wrapper for Monaco Editor, providing a powerful code editor UI.

- `npm install y-monaco`  
  Integrates Yjs with the Monaco Editor to enable real-time collaborative code editing.

- `npm install y-socket.io`  
  Connects Yjs documents to a Socket.IO server for real-time synchronization between clients.

- `npm install yjs`  
  The core Yjs library for building real-time collaborative applications.
