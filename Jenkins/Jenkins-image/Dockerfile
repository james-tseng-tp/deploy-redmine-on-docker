FROM jenkins/jenkins:latest

USER root
RUN apt-get update -y \
	&& apt-get install -y sudo \
	&& apt-get install -y libltdl7 \
	&& rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
