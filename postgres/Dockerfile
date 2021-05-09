FROM postgres

EXPOSE 5432

COPY ./data /docker-entrypoint-initdb.d

ENV POSTGRES_DB demo_db
ENV POSTGRES_USER demo
ENV POSTGRES_PASSWORD demo
