FROM python:3.9

RUN pip install Django==3.2

RUN pip install gunicorn

RUN pip install click==7.1.2

RUN pip install Flask==1.1.2

RUN pip install itsdangerous==1.1.0

RUN pip install Jinja2==2.11.2

RUN pip install MarkupSafe==1.1.1

RUN pip install Werkzeug==1.0.1

ADD . /app

RUN apt-get update && apt-get install -y git

RUN apt-get update && apt-get install -y netcat

EXPOSE 8000

ENTRYPOINT python /app/manage.py runserver 0.0.0.0:8000
