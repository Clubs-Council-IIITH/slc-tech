# build and start
FROM golang:alpine3.20
WORKDIR /src
COPY package*.json .

# Install Git
RUN apk add --update alpine-sdk
RUN git config --system --add safe.directory /src && \
    git config --system --add core.quotepath false

# Intall Node.js
RUN apk add nodejs npm && \
    mkdir /.npm && \
    chmod 777 /.npm

RUN npm i --prefer-offline --no-audit --progress=true --loglevel verbose --omit=dev

# Install Hugo
RUN CGO_ENABLED=1 go install -tags extended github.com/gohugoio/hugo@latest
ENTRYPOINT ["hugo", "server"]
