FROM jboss/keycloak:4.1.0.Final

COPY /themes/gr8pi/ /opt/jboss/keycloak/themes/gr8pi

RUN ls -la /opt/jboss/keycloak/themes; ls -la /opt/jboss/keycloak/themes/gr8pi
