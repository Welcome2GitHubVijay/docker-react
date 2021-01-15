# Specify a base image
FROM alpine:3.7

# Update
RUN apk add --update nodejs

# Set container working directory
WORKDIR /usr/app

# Copy package.json file
COPY ./package.json ./

# Install some depenendencies
RUN npm install

# Copy all src file to usr/app
COPY ./ ./

# Default command
CMD ["npm", "start"]