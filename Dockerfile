#Started from a base image of node with tag alpine 
FROM node:alpine

#Setting work directory to /data/
WORKDIR /data/

# Clone the code to /data/calculator
RUN apk add --no-cache git && git clone https://github.com/ahfarmer/calculator.git

#Set the work directory to /data/calculator
WORKDIR /data/calculator 

#Build the app by installing all the dependencies
RUN npm install

#Exposing the application to port 3000
EXPOSE 3000

#Run the application
CMD ["npm", "start"]