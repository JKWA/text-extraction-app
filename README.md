# Text Extraction App

This application is built using FastAPI to extract text from PDF and DOCX files. It can be run locally or as a Docker container.

## Features

- Extract text from PDF files using PyPDF2.
- Extract text from DOCX files using python-docx.
- Easy deployment with Docker.
- Auto-generated documentation with Swagger UI.

## Requirements

- Python 3.10 or higher
- Docker

## Local Setup

1. **Clone the Repository**

   ```bash
   git clone https://github.com/JKWA/text-extract-app.git
   cd text-extraction-app
   ```

2. **Setup Virtual Environment**

   Setup your local environment using the Makefile:

   ```bash
   make setup
   ```

   This will create a virtual environment and install all required dependencies.

3. **Run the Application Locally**

   To run the application locally on your machine:

   ```bash
   make run-local
   ```

   This will start the Uvicorn server with live reload enabled on `http://localhost:8000`.

   Visit `http://localhost:8000/docs` in your web browser to access the Swagger UI and interact with the API.

## Docker Setup

1. **Build the Docker Image**

   Build the Docker image using:

   ```bash
   make build
   ```

2. **Run the Docker Container**

   Start the Docker container with:

   ```bash
   make run
   ```

   The application will be available at `http://localhost:8000`.

   To stop the container, use:

   ```bash
   make stop
   ```

## Usage

## Usage

The API provides endpoints to extract text from uploaded PDF and DOCX files. Here’s how to use it:   
   - Open a web browser to `http://localhost:8000/docs`.

   - On the Swagger UI page, select `/extract-text/` endpoint.

   - Click on the “Try it out” button.

   - Use the input field select a file. 

   - Click the “Execute” button to send the request. 

## Contributing

Contributions to this project are welcome! Please fork the repository and submit a pull request with your changes.

## License

 MIT


