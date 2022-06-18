#FROM alpine:3.1

# Update
#RUN apk add --update python py-pip
FROM python:3.8-slim-buster

WORKDIR /app


# Install app dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Bundle app source
COPY vm.py /home/app/hello_flask

EXPOSE  9000
CMD ["python", "/home/app/hello_flask", "-p 9000"]
