## FROM deepakaiden/apachetomcat
FROM lakshmi1994/tomcat
LABEL name="lakshmi"
LABEL description="Use dockertomcat image as base image for custom tomcat deployment"
USER root
RUN mkdir /usr/local/tomcat/webapps/build/
RUN mkdir /usr/local/tomcat/webapps/build/static/
RUN mkdir /usr/local/tomcat/webapps/build/static/css/
RUN mkdir /usr/local/tomcat/webapps/build/static/js/
COPY $WORKSPACE/build/* /usr/local/tomcat/webapps/build/
COPY $WORKSPACE/build/static/css/*.css /usr/local/tomcat/webapps/build/static/css/
EXPOSE 8080
