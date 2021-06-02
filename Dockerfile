# Use a node base image
FROM node:latest

# Set maintainer
LABEL maintainer "hamzasaiff@gmail.com"

# Set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# Tell docker what port to expose
EXPOSE 8000

# Working directory
# WORKDIR usr/src/app

# Copy all the files that start with package
COPY package*.json ./

# Run npm
RUN npm install

# First dot(.) is local machine and 2nd dot(.) is image
COPY . .

# To start
CMD ["node", "start"]
