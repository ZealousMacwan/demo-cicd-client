# Use an official Node.js image as the base
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package*.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the application code to the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Set the environment variable for the app
ENV NODE_ENV=production

# Run the command to start the app when the container is launched
CMD ["npm", "start"]
