# Use an official Node.js image as a base
FROM node:14
 
# Set the working directory in the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the application code
COPY . .
 
# Build TypeScript source code
RUN npm run build
 
# Start the application
CMD npm start