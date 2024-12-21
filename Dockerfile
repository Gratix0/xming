FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    x11-apps \
    xauth \
    openjdk-8-jdk \
    ant \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

ENV DISPLAY=host.docker.internal:0

COPY . .

CMD ["java", "-jar", "calc.jar"]
