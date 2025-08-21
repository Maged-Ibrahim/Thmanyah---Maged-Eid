# Use lightweight Python image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into container
COPY . .

# Expose port for FastAPI
EXPOSE 8000

# Run FastAPI
CMD ["uvicorn", "notebook:app", "--host", "0.0.0.0", "--port", "8000"]
