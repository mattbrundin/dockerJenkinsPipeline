#specify base image
FROM python:3

#set app directory
WORKDIR /usr/app/src

#copy the file(s) into the container
COPY . .

#no dependencies

#container startup command
CMD [ "python3", "./someCode.py"]
