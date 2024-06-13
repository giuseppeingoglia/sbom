# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Add labels for author and vendor
LABEL author="Giuseppe"
LABEL vendor="Container Security"

# Run app.py when the container launches
CMD ["python", "app.py"]
