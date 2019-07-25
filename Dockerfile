FROM node:12-alpine

RUN mkdir -p /app
RUN mkdir -p /tmp

# Using the tmp directory to build the dist and move files to where they need to be
WORKDIR /tmp

# Copy our code into tmp
COPY . /tmp

# Build webpack static files
RUN yarn install && \
    yarn run build

# Move the static webpack files and the server to /app
RUN mv ./dist /app && \
    mv ./server.js /app && \
    mv ./node_modules /app

# Now set the working directory to /app
WORKDIR /app

# Expose ports
EXPOSE 80

# Set any env variables
ENV PORT=80

# Run the express server
CMD ["node", "server.js"]

