FROM python:3-slim
ENV PYTHONUNBUFFERED True
COPY . /app
WORKDIR /app
RUN pip3 --no-cache-dir install -r requirements.txt   
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app

