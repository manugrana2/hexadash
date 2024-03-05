# Use the official Node.js 16 image as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the project dependencies with --legacy-peer-deps flag
RUN npm install --legacy-peer-deps

# Copy the rest of your application's code
COPY . .

# Build your SvelteKit app
RUN npm run build

# Use a process manager like PM2 to run your app and automatically restart it if it fails
RUN npm install -g pm2

# Assuming you have an ecosystem.config.js as described previously
CMD ["pm2-runtime", "start", "ecosystem.config.cjs", "--env", "production"]

