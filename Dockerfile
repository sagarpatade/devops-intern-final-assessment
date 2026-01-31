# Used a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the script into the container
COPY hello.py .

# Run the script
CMD ["python", "hello.py"]