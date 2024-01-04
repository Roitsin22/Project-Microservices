#!/bin/bash
python manage.py collectstatic --noinput
# Apply migrations
python3 manage.py migrate

# Start Gunicorn
gunicorn backend.wsgi:application --bind 0.0.0.0:8000 --workers 4 --threads 4

