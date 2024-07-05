# > docker build --file=backend.dockerfile  -t friendr-backend .
# > docker run -p 3000:3000 friendr-backend

FROM node:18-alpine
WORKDIR /backend
COPY backend/package*.json ./
RUN npm install
COPY backend ./
 
EXPOSE 3000
CMD [ "node", "index.js" ]