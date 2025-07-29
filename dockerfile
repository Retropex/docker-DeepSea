FROM python:3.12-slim

WORKDIR /app

RUN apt-get update &&\
    apt-get install curl gcc -y

COPY Custom-Ocean.xyz-Dashboard /app

RUN pip install --break-system-packages -r requirements.txt

RUN python3 setup.py

CMD ["python3", "App.py"]