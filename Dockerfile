#Build react app
FROM node:lts-alpine
WORKDIR /usr/local/app
COPY package.json package-lock.json ./
RUN npm install
COPY public ./public
COPY src ./src
# RUN npm run build
CMD ["npm", "start"]


