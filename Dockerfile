FROM python:3.11
WORKDIR /app

RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc

RUN pip install poetry

COPY ./ /app

RUN poetry install

CMD ["python3", "main.py"]
