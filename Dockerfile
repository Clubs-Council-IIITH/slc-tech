# cache dependencies
FROM node:20-slim AS node_cache
WORKDIR /cache/
COPY package*.json .
RUN npm install --prefer-offline --no-audit --progress=true --loglevel verbose --omit=dev

# build and start
FROM node:20-slim AS build
WORKDIR /src
COPY --from=node_cache /cache/ .
COPY . .
RUN npm run build
ENTRYPOINT [ "npm", "start" ]
