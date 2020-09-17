FROM adoptopenjdk/openjdk11:alpine-jre

RUN adduser --system --shell /sbin/nologin appuser
COPY build/libs/demo.jar demo.jar
USER appuser

ENV JDK_JAVA_OPTIONS "-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Dfile.encoding=UTF-8 -XX:MaxRAMPercentage=90 -Duser.timezone=UTC"
ENTRYPOINT ["java", "-jar", "demo.jar"]
