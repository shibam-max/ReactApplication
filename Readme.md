#To build the image 
Run: docker build -t <image-name> .

#To run the container
run: docker run -p 5000:3000 <image-name>

#To run the docker-compose
Run: docker compose up -d --build
