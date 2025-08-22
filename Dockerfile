FROM alpine:latest
LABEL maintainer="Sistemas Ramada <sistema@ramada.com.br>"

ENV WILDFLY_LOCATION /opt/wildfly
ENV WILDFLY_DOWNLOAD https://grfetvhg7pdl.compat.objectstorage.sa-saopaulo-1.oraclecloud.com/downloads-sankhya-tools/Wildfly_11.0_Sankhya_mod_06.zip

ADD $WILDFLY_DOWNLOAD $WILDFLY_LOCATION/
ADD start.sh /start.sh
WORKDIR $WILDFLY_LOCATION

RUN apk add openjdk11
RUN apk add zip
RUN unzip Wildfly_11.0_Sankhya_mod_06.zip
RUN mv -f ./Wildfly_11.0_Sankhya_mod_06/wildfly_producao/* $WILDFLY_LOCATION
RUN rm -rf Wildfly_11.0_Sankhya_mod_06.zip wildfly_producao
RUN chmod +x /start.sh

CMD ["/start.sh"]

