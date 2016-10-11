NAME=yarn
VERSION=6.7
REGISTRY=rcoedo

TAG=$(REGISTRY)/$(NAME):$(VERSION)

build:
	docker build --rm -t $(TAG) .

push:
	docker push $(TAG)

run: build
	docker run -i -t --rm $(TAG)

clean:
	docker rmi $(TAG)
