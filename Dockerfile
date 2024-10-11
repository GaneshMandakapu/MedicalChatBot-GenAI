FROM python:3.12-slim-buster

WORKDIR /app

COPY templates /app

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]