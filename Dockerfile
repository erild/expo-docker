FROM node:9.10

RUN npm install -g exp
RUN mkdir /app
COPY entrypoint.sh /docker/entrypoint.sh

WORKDIR /app
ENTRYPOINT ["/bin/bash", "/docker/entrypoint.sh"]
CMD ["exp", "start", "/app/test-project"]
EXPOSE 19000