FROM node:alpine
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .
RUN cat BUILD || echo "Development build"

RUN npm run build

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["npm", "start"]
