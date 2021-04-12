FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN pip3 install flask-restful
EXPOSE 5000
COPY ./app.py /app/app.py 
CMD ["python3","/app/app.py"]
