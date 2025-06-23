# Use official OpenJDK image
FROM 099199746132.dkr.ecr.us-east-1.amazonaws.com/java-sdk:latest

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
