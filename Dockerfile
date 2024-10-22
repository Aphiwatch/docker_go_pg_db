#Base Image
FROM golang:1.22.5

#Set Working Directory
WORKDIR /app

#Copy the source code
COPY . .

#Install dependencies
RUN go get -d -v ./...

#Build the binary
RUN go build -o api

#Expose the port
EXPOSE 8000

#Command to run the executable
CMD ["./api"]