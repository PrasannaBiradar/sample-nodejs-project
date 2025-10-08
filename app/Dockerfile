# Sample Dockerfile for Node.js + MongoDB app
FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 2000
CMD ["node", "index.js"]