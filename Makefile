.PHONY: build test clean

IMAGE := jonbaldie/htop:latest

build:
	docker build -t $(IMAGE) .

test:
	docker run --rm $(IMAGE) which htop | grep '/usr/bin/htop'

clean:
	docker rmi -f $(IMAGE) || true
