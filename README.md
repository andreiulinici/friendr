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
- See Dockerfile: Build and run backend, comment backend part in Dockerfile, then uncomment frontend part, build and run frontend.
