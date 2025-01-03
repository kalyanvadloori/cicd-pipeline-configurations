# Base image
FROM node:20

# Create app directory
WORKDIR /app

# A wildcard is used to ensure both package. json AND package-lock. json are copied
COPY package*-json •/

# Install app dependencies
RUN npm install

# Bundle app source
COPY • •

# Creates a "dist" folder with the production build
RUN npm run build

# ENV Setup
ENV NODE_ENV='production'

# Ports Setup
EXPOSE 3000

# init all
ENTRYPOINT ["dumb-init", "--"]
# Start the server using the production build
CMD [ "node", "bin/www" ]