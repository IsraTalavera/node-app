FROM mcr.microsoft.com/dotnet/core/sdk:3.1


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN apt-get update -y 
RUN apt-get install -y nodejs
RUN echo 'Random sample text' > test4.txt
RUN apt update
RUN apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades
RUN ls
RUN cat test4.txt
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

