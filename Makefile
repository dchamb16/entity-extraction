setup:
	python3 -m venv ~/.entity_extraction

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W2013 entity_extraction.py

all: install test lint