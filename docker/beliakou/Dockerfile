FROM python:3.6

RUN pip install Flask
COPY . /

ENV FLASK_APP=hello.py
CMD flask run --host=0.0.0.0

EXPOSE 5000
