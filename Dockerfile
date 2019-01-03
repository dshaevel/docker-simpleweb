# ========================
# Free Proxy List:
# https://www.us-proxy.org
# ========================

# --------------------
# Docker build command
# --------------------
# docker build -t dshaevel/simpleweb --build-arg http_proxy=http://12.239.214.4:8080 .

# ------------------
# Docker run command
# ------------------
# docker run -p 8080:8080 dshaevel/simpleweb

# Specify a base image
FROM node:alpine

# Specify a working directory
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]