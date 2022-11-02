FROM adoptopenjdk/openjdk11:alpine

ARG VERSION
ENV VERSION=${VERSION}

WORKDIR /antlr

RUN wget https://www.antlr.org/download/antlr-${VERSION}-complete.jar && mv antlr-${VERSION}-complete.jar antlr.jar

WORKDIR /work

ENTRYPOINT ["java", "-Xmx500M", "-cp", "/antlr/antlr.jar", "org.antlr.v4.Tool"]
