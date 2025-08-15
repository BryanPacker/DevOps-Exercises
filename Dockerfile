FROM python:3.11-slim
WORKDIR /code
COPY . . 
RUN apt-get update 
RUN apt-get install -y libpq-dev gcc
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD ["/code/startup.sh"]
