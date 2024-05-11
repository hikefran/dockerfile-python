
FROM python:3.9-alpine

WORKDIR /app

COPY app.py .

RUN pip install flask

# Expondo a porta 8090
EXPOSE 8090

CMD ["flask", "run", "--host=0.0.0.0", "--port=8090"]
