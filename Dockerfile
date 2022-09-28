FROM postgres:14.5-alpine

ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB regen_events
COPY schema.sql /docker-entrypoint-initdb.d/

EXPOSE 5432

CMD ["postgres"]