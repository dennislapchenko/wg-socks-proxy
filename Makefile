IMAGE_NAME=dennislapchenko/wg-socks-proxy:1

build-image:
	docker build -t ${IMAGE_NAME} .

build-push: build-image
	docker push ${IMAGE_NAME}
