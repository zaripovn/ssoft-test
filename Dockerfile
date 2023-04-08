FROM python:3.6.15-alpine3.15

WORKDIR /app

COPY ./flaskex/requirements.txt .

RUN pip install -r requirements.txt

COPY ./flaskex .

EXPOSE 5000

CMD ["python3","app.py"]