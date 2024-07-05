# > docker build --file=frontend.dockerfile  -t friendr-frontend .
# > docker run -p 4200:4200 friendr-frontend

FROM node:18-alpine
WORKDIR /frontend
COPY frontend/package*.json ./
RUN npm install -g @angular/cli
RUN npm install
COPY frontend ./
 
EXPOSE 4200
CMD ["ng", "serve", "--port", "4200", "--host", "0.0.0.0", "--configuration", "production"]