# Use official OpenJDK image
FROM openjdk:17

# Create app directory
WORKDIR /app

# Copy source code
COPY HttpServerApp.java .

# Compile the Java app
RUN javac HttpServerApp.java

# Expose HTTP port
EXPOSE 8080

# Run the server
CMD ["java", "HttpServerApp"]
