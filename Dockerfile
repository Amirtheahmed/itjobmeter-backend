# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies if needed (e.g. for some python packages)
# RUN apt-get update && apt-get install -y --no-install-recommends gcc && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code and README (required by badge_generator.py)
COPY README.md .
COPY src/ src/

# Create a non-root user for security
RUN useradd -m appuser
USER appuser

# Default command
CMD ["python", "-m", "src.main"]