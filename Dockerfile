FROM node:lts-alpine3.20

# set working directory in  container to /app
WORKDIR /app

# package.json and yarn.lock files for dependencies
COPY package.json yarn.lock ./

# install dependencies from package.json
RUN yarn install --frozen-lockfile

# copy the rest of the code to /app
COPY . .

# port 3000 to access app
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
