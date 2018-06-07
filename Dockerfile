FROM jfloff/alpine-python:2.7

COPY nltk-2.0.5 /nltk/

RUN pip install /nltk

RUN pip install annotald
