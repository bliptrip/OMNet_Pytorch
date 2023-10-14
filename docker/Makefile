build.torch:
	docker build --network host --no-cache -t bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime -f Dockerfile.torch .

build.torch.amend:
		docker build --network host --no-cache -t bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime -f Dockerfile.torch.amend .

push.torch:
	docker push bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime

run:
	docker run -u $$(id -u):$$(id -g) --rm -it bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime
