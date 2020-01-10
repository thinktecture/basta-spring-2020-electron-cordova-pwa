# Desktop Backend

The desktop backend exposes a simple list of produts for demonstration purpose. 

The API can be invoked from JS because it has no CORS limitations. 

## Endpoints

Actual endpoints url depends on the hosting environment. If you run the API locally using Docker and bind the exposed port `8080` to your local port `8080`, data is exposed like this:

`GET: http://localhost:8080/api/products`: exposes the list of all products

`GET: http://localhost:8080/api/products/{productId}`: exposes the details of a specific product

## Running API in Docker locally

API exists as Docker Image hosted on public Docker Hub. You can pull the image either manually using

```bash
docker pull thorstenhans/products-api:basta

```

Or you can just start a new container and let `docker run` pull the image if it doesn't exist locally

```bash
docker run --name desktop-backend -p 8080:8080 -d thorstenhans/products-api:basta

```

The repository also contains a shell script (`run-with-docker.sh`) which invokes the command from above. Start it using `./run-with-docker.sh`.

You can delete the stop and delete the container using the following commands:

```bash
docker stop desktop-backend
docker rm desktop-backend

```