
FROM python:3.9.4-buster

# To user stable tensorflow 2.4.0, must use python 3.7 or 3.8. Python 3.9 will not work. See https://www.tensorflow.org/install/pip

# Add tools
RUN apt-get update && \
apt-get -y install ffmpeg


# Add pip modules
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Add app as the last step (invalidates cache)
COPY ./app /app


