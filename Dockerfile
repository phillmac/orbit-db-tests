FROM node:lts

RUN mkdir workdir

WORKDIR /workdir

RUN git clone -b fix/tests-1 "https://github.com/orbitdb/orbit-db.git" .

RUN  npm install . phillmac/orbit-db-kvstore#master  phillmac/orbit-db-docstore#master

CMD ["npm", "test"]
