FROM rabbitmq:management-alpine

COPY rabbitmq.config /etc/rabbitmq/rabbitmq.config
COPY definitions.json /etc/rabbitmq/definitions.json

EXPOSE 15672

# Set permission
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config /etc/rabbitmq/definitions.json
# Define default command
CMD ["rabbitmq-server"]