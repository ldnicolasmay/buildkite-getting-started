FROM python:3.9.9

WORKDIR /home

COPY main.py ./

CMD ["python", "./main.py"]
