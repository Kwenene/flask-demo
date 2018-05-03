FROM python:3.6.3

#MAINTANER Thembela Kwenene "thembela@kineticskunk.com"

#RUN apt-get update -y && \
 #   apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]
#CMD [ "echo", "All of them" ]
EXPOSE 5000
CMD [ "hello/app.py" ]
