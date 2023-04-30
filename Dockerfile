FROM node:16

# Create app directory
WORKDIR /data

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8080
#CMD [ "node", "/data/src/index.js" ]

RUN node /data/src/index.js
CMD [ "tail", "-f", "/dev/null" ]
