FROM jenkins/jenkins:lts

USER root

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install the Git plugin using the Jenkins-plugin-cli tool
RUN jenkins-plugin-cli --plugins git github-branch-source workflow-aggregator

# Switch back to Jenkins user
USER jenkins

COPY ./job.xml /usr/share/jenkins/ref/jobs/runPythonOnPR/config.xml