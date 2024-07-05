# friendr

First, copy the mongo connection string (from https://cloud.mongodb.com) in backend/index.js, then:
- Add your IP or 0.0.0.0/0 in Mongo Cloud (Network Access page) to allow access to DB from that IP.
- npm i
- node index.js

In frontend:
- npm i
- ng serve
- (angular.json was changed to use production by default on ng serve)
- TODO: run in production mode (call enableProdMode)

Deploy locally:
- First solution: use docker-compose YAML to Dockerize both frontend and backend. Run the commands from frontend.dockerfile and backend.dockerfile, then the command from yml (https://www.milanwittpohl.com/projects/tutorials/full-stack-web-app/dockerizing-our-front-and-backend)
- Second solution (does not work): use Dockerfile
