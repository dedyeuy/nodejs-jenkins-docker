FROM node:latest

# Create app directory
#WORKDIR /usr/src/app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
COPY users.json /app

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /app

CMD node server.js

EXPOSE 3000
#CMD [ "npm", "start" ]

