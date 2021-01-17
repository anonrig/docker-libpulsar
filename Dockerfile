FROM node:15 AS build

RUN wget --user-agent=Mozilla -O apache-pulsar-client.deb "https://archive.apache.org/dist/pulsar/pulsar-2.7.0/DEB/apache-pulsar-client.deb"
RUN wget --user-agent=Mozilla -O apache-pulsar-client-dev.deb "https://archive.apache.org/dist/pulsar/pulsar-2.7.0/DEB/apache-pulsar-client-dev.deb"

RUN dpkg -i ./apache-pulsar-client.deb
RUN dpkg -i ./apache-pulsar-client-dev.deb

# FROM node:15 AS build
# WORKDIR /app

# COPY ./package.json /app/package.json
# COPY ./package-lock.json /app/package-lock.json

# RUN npm install --prefer-offline --no-audit --progress=false
# COPY . .

# ENV NODE_ENV=production
# RUN npm run build

# EXPOSE 3000
# CMD [ "npm", "start" ]
