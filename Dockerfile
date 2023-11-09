# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Run your Python script when the container launches
CMD ["python", "vectorizer.py"]
