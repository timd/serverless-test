# // Dockerfile

# Select node version and set working directory
FROM node:12-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose publc port and run npm command
EXPOSE 8080
CMD ["node", "src/index.js"]