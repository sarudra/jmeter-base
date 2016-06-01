#
# Dockerfile for a base jmeter image
#
# Usage:
# It is unlikely that you will need to run this image.
# It forms the basis for other images.
#

FROM ubuntu:14.04
MAINTAINER Srinivasa Arudra sarudra@paypal.com

# Describe the environment
ENV JDK_VERSION 1.7.0
ENV JMETER_VERSION 2.13

RUN sudo apt-get update -y
RUN sudo apt-get install curl -y

# Install the JDK
RUN  sudo apt-get install openjdk-7-jdk -y

#Install zip
#RUN sudo apt-get install zip

#Install unzip
RUN sudo apt-get install unzip

# Install JMeter
RUN cd /var/lib && \
  curl https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz -o /var/lib/jmeter-$JMETER_VERSION.tgz && \
  tar xf jmeter-$JMETER_VERSION.tgz && \
  rm -f jmeter-$JMETER_VERSION.tgz
