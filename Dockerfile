FROM quay.io/keycloak/keycloak:25.0.0

ENV DB_VENDOR=postgres
ENV DB_ADDR=dpg-csfmong8fa8c73a0kmrg-a.singapore-postgres.render.com
ENV DB_PORT=5432
ENV DB_DATABASE=keycloak_db_z5z2
ENV DB_USER=keycloak_db_z5z2_user
ENV DB_PASSWORD=${DB_PASSWORD}
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=${KEYCLOAK_ADMIN_PASSWORD}

ENV QUARKUS_DATASOURCE_DB_KIND=postgresql
ENV QUARKUS_DATASOURCE_USERNAME=keycloak_db_z5z2_user
ENV QUARKUS_DATASOURCE_PASSWORD=${DB_PASSWORD}
ENV QUARKUS_DATASOURCE_JDBC_URL=jdbc:postgresql://dpg-csfmong8fa8c73a0kmrg-a.singapore-postgres.render.com:5432/keycloak_db_z5z2

EXPOSE 8080
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
