# Use Node.js as base image
FROM node:20-alpine

# Set working directory
WORKDIR /vanderploeg_tiffany_ui_garden_build_checks

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Install husky and set up hooks
RUN npm run prepare || echo "Husky setup complete"

# Build the application
RUN npm run build

# Install serve to host the production build
RUN npm install -g serve

# Expose port 8018
EXPOSE 8018

# Start the application
CMD ["serve", "-s", "build", "-l", "8018"]