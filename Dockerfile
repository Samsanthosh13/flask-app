# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container at /app
COPY requirement.txt /app/

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Copy the rest of the application code into the container
COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
