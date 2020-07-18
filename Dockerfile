FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
HEALTHCHECK --interval=5s --timeout=3s CMD curl -f http://54.80.251.218:8081/ || exit 1
COPY . .
ENTRYPOINT ["node","server.js"]
