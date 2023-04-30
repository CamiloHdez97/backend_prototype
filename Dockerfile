FROM node:20.0.0-bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install tail -y

#RUN npm install

#RUN npm run start


#WORKDIR /app

#iniciar el servicio web node
#CMD ["node", "src/index.js"]

CMD ["tail -f /dev/null"]

