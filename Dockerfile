FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

#Set environment variables
ENV PATH /app/node_modules/.bin:$PATH

#Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm","start"]