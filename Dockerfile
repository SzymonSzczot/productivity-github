FROM python:3.11-buster

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --upgrade -r /code/requirements.txt

COPY ./src /code/app
COPY ./entrypoint.sh /code

RUN chmod 777 /code/entrypoint.sh

CMD ./entrypoint.sh
