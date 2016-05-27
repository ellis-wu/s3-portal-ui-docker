FROM node:argon
MAINTAINER elliswu<ellis.w@inwinstack.com>

RUN apt-get install -y git
RUN git clone https://github.com/jigsawye/s3-portal-ui.git
WORKDIR s3-portal-ui
RUN git checkout release && npm install

COPY run.sh /s3-portal-ui/
RUN cp config.example.js config.js
RUN chown root.root run.sh && chmod 700 run.sh

EXPOSE 3000 3001 3002

ENTRYPOINT ["/s3-portal-ui/run.sh"]
