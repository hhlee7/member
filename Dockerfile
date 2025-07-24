 FROM openjdk:17
 ARG VERSION
 COPY target/stswebjpa-0.0.1-SNAPSHOT.jar /app/stswebjpa.jar
 LABEL maintainer="HyeonHo Lee<beady777@gmail.com>" \
	 title="Guestbook App" \
	 version="$VERSION" \
	 description="This image is guestbook service"
 ENV APP_HOME /app
 EXPOSE 80
 VOLUME /app/upload
 WORKDIR $APP_HOME
 ENTRYPOINT ["java"]
 CMD ["-jar","stswebjpa.jar"]
