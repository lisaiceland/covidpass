FROM node:lts as dependencies
ENV PORT 3000

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Installing dependencies
COPY package*.json /app/
RUN yarn install

# Copying source files
COPY . /app

# Building app
RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]
