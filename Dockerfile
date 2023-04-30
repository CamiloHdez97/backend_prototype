FROM node:20.0.0-bullseye

RUN apt update && apt upgrade -y

RUN npm install

RUN npm run start


WORKDIR /app

#CMD ["/bin/bash"]

#iniciar el servicio web node
CMD ["node", "src/index.js"]

#CMD ["tail -f /dev/null"]

