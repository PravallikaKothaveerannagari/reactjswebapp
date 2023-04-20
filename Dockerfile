# Use an existing Node.js image as the base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Build the React application
RUN npm run build

# Expose port 80 for the container
EXPOSE 80

# Start the server
CMD [ "npm", "start" ]
