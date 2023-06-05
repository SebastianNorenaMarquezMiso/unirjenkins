FROM python:3.6-slim

RUN mkdir -p /opt/calc

WORKDIR /opt/calc

COPY .coveragerc .pylintrc pyproject.toml pytest.ini requirements.txt ./
COPY app ./app
COPY test ./test
RUN pip install -r requirements.txt
