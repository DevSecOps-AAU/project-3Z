# Use official Python image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Expose Flask's default port
EXPOSE 3003

# Run the app
CMD ["python", "app.py"]
