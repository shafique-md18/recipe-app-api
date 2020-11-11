FROM python:3.7-alpine
LABEL maintainer="Shafique Mohammad"

# do not buffer python outputs
ENV PYTHONUNBUFFERED=1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# copy adjacent app foler as working directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# user to run the application
RUN adduser -D user1
USER user1
