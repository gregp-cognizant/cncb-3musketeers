CONTAINERCMD ?= docker

.PHONY : test run destroy clean test_web test_db client help
.DEFAULT_GOAL := help
test: test_web test_db ## runs all tests

build:  ## since we have no custom images, this will just pull the latest containers
	docker-compose pull

run: ## deploys the application
	${CONTAINERCMD} volume create dbdata || true
	docker-compose up -d webserver database
	docker-compose run --rm data_load

destroy: ## shuts everything down and cleans up the env
	$(info Shutting everything down...)
	docker-compose down --remove-orphans
	make clean

clean: ## resets env
	$(info Cleaning Database directory)
	${CONTAINERCMD} volume rm dbdata || true

test_web: ## runs web tests
	$(info Running Web Tests...)
	docker-compose run --rm curl web-tests.sh

test_db: ## runs database tests
	$(info Running DB Tests...)
	docker-compose run --rm client test-scripts/db-tests.sh

client: ## runs a container as an interactive terminal
	docker-compose run --rm client
