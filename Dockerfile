FROM alpine:3.8

# Update & install required packages
RUN apk add --update nodejs nodejs-npm bash

# Install app dependencies
COPY package.json /www/package.json
COPY package-lock.json /www/package-lock.json
RUN cd /www; npm install --production

# Copy app source
COPY src /www/src

# Set work directory to /www
WORKDIR /www

# Expose the port to outside world
EXPOSE  8080

# Start command as per package.json
CMD ["npm", "start"]
