FROM java:8
ADD enelia-dashboard-api.jar enelia-dashboard-api.jar
RUN bash -c 'touch /enelia-dashboard-api.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container","-jar","/enelia-dashboard-api.jar"]