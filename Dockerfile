FROM postgres:14.1

COPY ./src/main/sql/. /docker-entrypoint-initdb.d
RUN chown postgres:postgres /docker-entrypoint-initdb.d/*.sql

ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]