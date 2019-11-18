FROM python:3.6.7

COPY ./src/ /tradutor/
COPY ./requirements.txt /tradutor/

WORKDIR /tradutor

EXPOSE 3000

RUN pip install -r requirements.txt

CMD ["python", "/tradutor/app.py"]