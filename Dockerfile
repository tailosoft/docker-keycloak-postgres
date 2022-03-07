ARG KEYCLOAK_VERSION
FROM quay.io/keycloak/keycloak:$KEYCLOAK_VERSION

RUN echo "keycloak version: $KEYCLOAK_VERSION"

ENV KC_METRICS_ENABLED=true
ENV KC_DB=postgres
RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]
