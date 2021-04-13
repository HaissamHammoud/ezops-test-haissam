ARG VARIANT=12
FROM node:${VARIANT}

# Create app directory
WORKDIR /usr/src/app

# To run the container use docker run -d  -p 3000:3000 nodeapptest 
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production


# Install npm packages and dependencies
RUN npm install -s body-parser \
        && npm install -s socket.io \
        && npm install -s http \
        && npm install -s mongoose \ 
        && npm install -s body-parser \
        && npm install -s express

# Copy the actual directory to workdir directory
COPY . .

EXPOSE 3000
CMD [ "node", "server.js" ]