# ---------------------------
#  FastAPI + Uvicorn + SQLite Dockerfile
# ---------------------------

# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose the Render port
EXPOSE 10000

# Default command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]
