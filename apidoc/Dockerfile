FROM swaggerapi/swagger-ui

ENV SWAGGER_JSON /tmp/api.yml

ARG CONFIG_FILE=./youthchinaopenapi.yml

COPY ${CONFIG_FILE} /tmp/api.yml

CMD ["sh", "/usr/share/nginx/run.sh"]

