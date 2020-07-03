FROM python:3.7.3-stretch

WORKDIR /entity_extraction

COPY . entity_extraction.py /entity_extraction/

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt