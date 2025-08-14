#!/bin/bash
python3 manage.py migrate --noinput
export DJANGO_SUPERUSER_PASSWORD=proway
export DJANGO_SUPERUSER_USERNAME=proway
export DJANGO_SUPERUSER_EMAIL=teste@proway.com.br
python3 manage.py createsuperuser --noinput 
python3 manage.py runserver 0.0.0.0:8080
