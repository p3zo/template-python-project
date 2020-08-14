.PHONY: build dev shell stop

build:
	@echo "Building image:"
	docker-compose build

dev:
	@echo "Starting containers in dev mode:"
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

shell: dev
	@echo "Getting a shell inside the container:"
	docker-compose exec app bash

stop:
	@echo "Bringing Docker down:"
	docker-compose down
