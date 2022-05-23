FROM gradle:jdk11 as gradleimage
COPY . /home/gradle/source
WORKDIR /home/gradle/source
RUN gradle build

FROM public.ecr.aws/docker/library/amazoncorretto:17-alpine-jdk
COPY /home/gradle/source/build/libs/github-actions-0.0.1-SNAPSHOT.jar /app/
WORKDIR /app
ENTRYPOINT ["java","-jar","/github-actions-0.0.1-SNAPSHOT.jar"]
