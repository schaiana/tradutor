.PHONY = build run test start stop clean

build:
	docker build . -t image-app-tradutor

run: build
	docker run --name app-tradutor -p 3000:3000 image-app-tradutor

test:
	docker build -f Dockerfile.test . -t image-test-app-tradutor
	docker run --name test-app-tradutor image-test-app-tradutor

start: build
	docker run --name app-tradutor -d -p 3000:3000 image-app-tradutor

stop:
	docker stop app-tradutor

