# Base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy application code and dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
