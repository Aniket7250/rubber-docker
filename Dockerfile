# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script or files to the container
COPY . /app

# Install any Python dependencies (if any)
RUN pip3 install --no-cache-dir -r requirements.txt

# Set the default command to run your Python script
CMD ["python", "process_isolation.py"]
