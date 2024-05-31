# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.10-slim

# Set the working directory in the Docker container
WORKDIR /app

# Install Python dependencies.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Download NLTK data
RUN python -m nltk.downloader punkt

# Copy the local code to the container's working directory.
COPY . .

# Inform Docker that the container listens on the specified port at runtime.
EXPOSE 8000

# Command to run the Uvicorn server.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
