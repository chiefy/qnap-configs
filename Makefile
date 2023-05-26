DOCKER_IMAGE=chiefy/mopidy
DOCKER_TAG=latest

.PHONY: build
build:
	@docker build -f Dockerfile.mopidy -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

.PHONY: push
push:
	@docker push $(DOCKER_IMAGE):$(DOCKER_TAG)