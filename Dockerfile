
FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y python3-dev libpq-dev && \
    pip install --upgrade pip && \
    pip install django psycopg2-binary && \
    python manage.py collectstatic --noinput || true

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
