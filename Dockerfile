# Dockerfile for Amazon Linux 2, that provides minimal installations required
# for an Azure Pipelines build that requires which, ssh, and useradd binaries
FROM amazonlinux:2

# Install minimal packages
RUN yum update -y

RUN yum install -y sudo which curl
RUN yum install -y openssh-server openssh-clients
RUN yum install -y shadow-utils.x86_64

EXPOSE 8080 22

