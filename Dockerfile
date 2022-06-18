FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY vm.py /home/app/hello_flask

EXPOSE  9000
CMD ["python", "/home/app/hello_flask", "-p 9000"]
