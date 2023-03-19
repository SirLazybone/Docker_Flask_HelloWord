FROM python:alpine

WORKDIR /app
COPY /app .
COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python", "main.py"]