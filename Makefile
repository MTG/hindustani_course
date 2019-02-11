build:
	docker build --no-cache -t mtg-docker.sb.upf.edu/hindustani-course .

push:
	docker push mtg-docker.sb.upf.edu/hindustani-course

all: build push
