FROM node:latest

# Create app directory
#WORKDIR /usr/src/app
WORKDIR /home/cipa/Git/nodejs-jenkins-docker

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
COPY users.json /home/cipa/Git/nodejs-jenkins-docker 

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /home/cipa/Git/nodejs-jenkins-docker

CMD node server.js

EXPOSE 3000
#CMD [ "npm", "start" ]

