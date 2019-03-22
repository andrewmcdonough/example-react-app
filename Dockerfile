FROM node:alpine
WORKDIR /app

COPY . .
RUN cat BUILD || echo "Development build"

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["npm", "start"]
