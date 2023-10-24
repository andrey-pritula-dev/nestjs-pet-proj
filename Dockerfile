# Use the official Node.js LTS image as the base image
FROM node:18.12.1

# Create a working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . .

# Expose the port your NestJS app will run on (e.g., 3000)
EXPOSE 3000

# Command to start your NestJS application
CMD ["npm", "run", "start:dev"]
