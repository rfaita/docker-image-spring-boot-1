FROM openjdk:8-jdk-alpine

ARG JAR_FILE
ENV JAVA_OPTS "-Xmx256m -Xms128m"

ADD ${JAR_FILE} app.jar

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

