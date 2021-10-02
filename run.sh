#!/bin/bash
cd app
python manage.py collectstatic
gunicorn src.wsgi