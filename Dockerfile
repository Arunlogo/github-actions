FROM public.ecr.aws/docker/library/amazoncorretto:17-alpine-jdk
COPY github-actions-0.0.1-SNAPSHOT.jar github-actions-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/github-actions-0.0.1-SNAPSHOT.jar"]
