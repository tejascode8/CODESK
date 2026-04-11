# -------- FRONTEND BUILD STAGE --------

FROM node:20-alpine AS frontend-builder  
# Use lightweight Node.js image and name this stage "frontend-builder"

COPY ./frontend /app  
# Copy frontend source code into container

WORKDIR /app  
# Set working directory inside container

RUN npm install  
# Install frontend dependencies

RUN npm run build  
# Build frontend → creates optimized "dist" folder


# -------- BACKEND STAGE --------

FROM node:20-alpine  
# Start a fresh lightweight Node.js image for backend

COPY ./backend /app  
# Copy backend source code into container

WORKDIR /app  
# Set working directory

RUN npm install  
# Install backend dependencies

COPY --from=frontend-builder /app/dist /app/public  
# Copy built frontend (dist) from previous stage → serve via backend

CMD ["node", "server.js"]  
# Start backend server when container runs