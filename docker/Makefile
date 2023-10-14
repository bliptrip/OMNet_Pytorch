build.torch:
		docker build --network host --no-cache -t bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime -f Dockerfile.torch .

build.torch.amend:
		docker build --network host --no-cache -t bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime -f Dockerfile.torch.amend .

push.torch:
		docker push bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime

runit:
	docker run --name omnet-interactive --rm -it -v "$(PWD)/..:/workspace/" bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime /bin/bash

stopit:
		docker stop omnet-interactive

run:
		docker run --name omnet --rm -v "$(PWD)/..:/workspace/" bliptrip/omnet_pytorch:1.9.1-cuda11.1-cudnn8-runtime

stop:
		docker stop omnet
