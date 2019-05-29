FROM python:3.7
WORKDIR /quest

USER root

ARG DEFAULT_CORE_NAME=youthchinacore

ENV DEFAULT_CORE_NAME=${DEFAULT_CORE_NAME}

COPY --chown=root:root import.py /quest/import.py

# RUN ["chmod","+x","/quest/import.sh"]

# CMD ["/bin/sh","-c", "/quest/entrypoint.sh $DEFAULT_CORE_NAME"]
CMD ["python", "-u","/quest/import.py"]