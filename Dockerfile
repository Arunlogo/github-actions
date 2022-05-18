FROM public.ecr.aws/docker/library/amazoncorretto:17-alpine-jdk
COPY dummy.jar dummy.jar
ENTRYPOINT ["java","-jar","/dummy.jar"]
