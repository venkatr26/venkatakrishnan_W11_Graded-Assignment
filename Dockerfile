ubuntu@ip-172-31-36-39:~/app$ cat Dockerfile
FROM python:3.9-slim

WORKDIR /home/ubuntu/app/

COPY app.py /home/ubuntu/app/
COPY ms /home/ubuntu/app/ms/
COPY model /home/ubuntu/app/model/

RUN pip install flask pandas joblib

EXPOSE 5000

CMD ["python", "app.py"]
