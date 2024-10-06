# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file if it exists (we will create this next)
COPY requirements.txt .

# Install Flask in the container
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

