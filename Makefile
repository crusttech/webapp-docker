.PHONY: build push run

TAG=latest
IMAGE=crusttech/crust-webapp

build:
	docker build --no-cache -t $(IMAGE):$(TAG) .

push:
	docker push $(IMAGE):$(TAG)

run:
	docker run --rm -it -e -P $(IMAGE):$(TAG)
