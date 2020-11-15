# recipe-app-api
A simple recipe app api using django, django-rest-api, docker with unit tests.

## Build Project
Install docker and docker compose and use the included Dockerfile to
get the dependencies and install the project

## Start development server
```
docker-compose up
```


## Testing
```
docker-compose run app sh -c "python manage.py test"
```