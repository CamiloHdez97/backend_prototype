FROM nginx:stable-bullseye

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN apt install -y nodejs

CMD ["/bin/bash"]

#RUN apt update && apt upgrade -y
WORKDIR /usr/share/nginx/html

#COPY ./nginx.conf /etc/nginx/conf.d/default.conf

#CMD ["/bin/bash"]

#iniciar el servicio web nginx
CMD ["nginx", "-g", "daemon off;"]

#CMD ["tail -f /dev/null"]

