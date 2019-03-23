USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

app-install-deps:
	docker-compose run app bundle install

app-bash:
	docker-compose run --user=$(USER) app bash

app-console:
	docker-compose run app bin/rails console

app-bash-root:
	docker-compose run app bash

app-db-prepare:
	docker-compose run app bin/rails db:setup

app-setup: app-build app-install-deps app-db-prepare
