FROM node:15 AS build

RUN wget --user-agent=Mozilla -O apache-pulsar-client.deb "https://archive.apache.org/dist/pulsar/pulsar-2.7.0/DEB/apache-pulsar-client.deb"
RUN wget --user-agent=Mozilla -O apache-pulsar-client-dev.deb "https://archive.apache.org/dist/pulsar/pulsar-2.7.0/DEB/apache-pulsar-client-dev.deb"

RUN dpkg -i ./apache-pulsar-client.deb
RUN dpkg -i ./apache-pulsar-client-dev.deb
