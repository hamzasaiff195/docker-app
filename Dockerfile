# Use a node base image
FROM node:12-alpine

# Working directory
 WORKDIR usr/src

# Copy all the files that start with package
COPY package*.json ./

# Run npm
RUN npm install

# First dot(.) is local machine and 2nd dot(.) is image
COPY . .

# Tell docker what port to expose
EXPOSE 8000

# To start
CMD ["npm", "app"]
