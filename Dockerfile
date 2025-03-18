# Use an official Jenkins image from the Docker Hub
FROM jenkins/jenkins:lts

# Switch to the root user to install dependencies
USER root

# Install Docker (if needed)
RUN apt-get update && \
    apt-get install -y docker.io

# Expose the necessary ports for Jenkins
EXPOSE 8080
EXPOSE 50000

# Switch back to the Jenkins user
USER jenkins
