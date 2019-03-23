USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

app-bash:
	docker-compose run --user=$(USER) app bash

app-setup: app-build app-db-prepare

app-db-prepare:
	docker-compose run --user=$(USER) app rake db:create
	docker-compose run --user=$(USER) app rake db:migrate

