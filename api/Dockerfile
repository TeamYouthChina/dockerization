FROM swaggerapi/swagger-ui
WORKDIR /tmp

ENV SWAGGER_JSON /tmp/api.yml

ARG CONFIG_FILE=/backend/backend/youthichinaopenapi.yml

COPY ${CONFIG_FILE} /tmp/api.yml

ENTRYPOINT [ "docker-entrypoint.sh" ]