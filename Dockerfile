# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY README.md .
COPY src/ src/

RUN useradd -m appuser
USER appuser

ENTRYPOINT ["python", "-m", "src.main"]