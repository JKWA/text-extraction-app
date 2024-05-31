IMAGE_NAME=text-extract-app
CONTAINER_NAME=text-extract-container
PORT=8000

VENV_DIR=venv

.PHONY: build run stop logs setup run-local

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --name $(CONTAINER_NAME) -p $(PORT):$(PORT) -d $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

logs:
	docker logs $(CONTAINER_NAME)

setup:
	python3 -m venv $(VENV_DIR)
	$(VENV_DIR)/bin/pip install -r requirements.txt
	$(VENV_DIR)/bin/python -m nltk.downloader punkt

run-local:
	$(VENV_DIR)/bin/uvicorn app:app --reload --port $(PORT)