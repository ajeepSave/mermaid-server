DOCKER_IMAGE=mermaid-server:10.5.0
CONTAINER_NAME=mermaid-server

docker-image:
	docker build -t ${DOCKER_IMAGE} .

docker-run:
	docker run -d --name ${CONTAINER_NAME} -p 80:80 ${DOCKER_IMAGE}

docker-stop:
	docker stop ${CONTAINER_NAME} || true

docker-rm:
	make docker-stop
	docker rm ${CONTAINER_NAME} || true

docker-logs:
	docker logs -f ${CONTAINER_NAME}

docker-push:
	docker push ${DOCKER_IMAGE}
