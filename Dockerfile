FROM node:carbon

WORKDIR /usr/src/app
COPY package*.json ./
ENV NODE_ENV=production
RUN npm install -gf nodemon \
  && npm install --only=production
COPY . .
EXPOSE 3000
CMD ["node", "./bin/www"]
USER node
