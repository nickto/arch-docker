DOCKER_USER:=nickto
DOCKER_ORGANIZATION=nickto
DOCKER_IMAGE:=arch
DOCKER_TAG:=$(git branch | grep \* | cut -d ' ' -f2)

docker-image:
	docker build -t $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) .

docker-image-test: docker-image
	$(error Not implemented yet)

ci-test: 
	$(error Not implemented yet)

docker-push:
	docker login -u $(DOCKER_USER)
	docker tag $(DOCKER_IMAGE) $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE)
	docker push $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE)

