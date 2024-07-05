# Build and run backend, comment, then uncomment frontend part, build and run frontend.

# Stage 1: Build the backend
# > docker build -t friendr-backend .
# > docker run -p 3000:3000 friendr-backend
FROM node:18-alpine
WORKDIR /backend
COPY backend/package*.json ./
RUN npm install
COPY backend ./
 
EXPOSE 3000
CMD [ "node", "index.js" ]


# Stage 2: Build the frontend
# > docker build -t friendr-frontend .
# > docker run -p 4200:4200 friendr-frontend

# FROM node:18-alpine
# WORKDIR /frontend
# COPY frontend/package*.json ./
# RUN npm install -g @angular/cli
# RUN npm install
# COPY frontend ./
 
# EXPOSE 4200
# CMD ["ng", "serve", "--port", "4200", "--host", "0.0.0.0", "--configuration", "production"]








# Below will not work: for FE and BE to work together we need an image for each one

# # Stage 1: Build the backend
# FROM node:alpine AS backend-build
 
# WORKDIR /backend
 
# COPY backend/package*.json ./
# RUN npm install
# COPY backend ./
 
# # Stage 2: Build the frontend
# FROM node:alpine AS frontend-build
 
# WORKDIR /frontend
 
# COPY frontend/package*.json ./
# RUN npm install -g @angular/cli
# RUN npm install
# COPY frontend ./
# RUN ng build
 
# # Stage 3: Combine both backend and frontend
# FROM node:alpine
 
# # Backend
# WORKDIR /app
# COPY --from=backend-build /backend /app
 
# # Frontend
# COPY --from=frontend-build /frontend/dist /app/public
 
# EXPOSE 3000
# CMD [ "node", "index.js" ]