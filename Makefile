.PHONY: build test clean

IMAGE := jonbaldie/htop:latest

build:
	docker build -t $(IMAGE) .

test:
	docker run --rm $(IMAGE) which htop | grep '/usr/bin/htop'
	docker run --rm $(IMAGE) htop --version

clean:
	docker rmi -f $(IMAGE) || true
