# Use the official Node.js base image
FROM node:14-alpine
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

RUN npm cache clean --force
 
# Install dependencies
RUN npm install
 
# Copy the remaining application files to the working directory
COPY . .
 
# Build the React application
RUN npm run build
 
# Expose port 3000 (default React port)
EXPOSE 3000
 
# Specify the command to run your application
CMD ["npm", "start"]
