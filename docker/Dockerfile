FROM tensorflow/tensorflow:latest-gpu

ENV TZ=America/Chicago

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& echo $TZ > /etc/timezone \
&& apt-get update \
&& apt-get upgrade --yes \
&& apt-get install --yes python python3-pip libopencv-dev \
&& apt-get install git-all --yes \
&& pip install opencv-python opencv-contrib-python scikit-image scipy numpy pandas pymongo shapely \
&& pip3 install git+https://github.com/keras-team/keras-contrib.git
