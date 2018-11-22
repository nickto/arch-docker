DOCKER_USER:=nickto
DOCKER_ORGANIZATION=nickto
DOCKER_IMAGE:=arch
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
DOCKER_TAG:=$(BRANCH)

docker-image:
	docker build -t $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE):$(DOCKER_TAG) .

docker-image-test: docker-image
	$(error Not implemented yet)

ci-test: 
	$(error Not implemented yet)

docker-push:
	docker login -u $(DOCKER_USER)
	docker push $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE)

