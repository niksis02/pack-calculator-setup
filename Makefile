.PHONY: setup up down restart logs build all

all: setup up

setup:
	@bash setup.sh

build:
	docker compose build

up:
	docker compose up -d --build

down:
	docker compose down

restart: down up

logs:
	docker compose logs -f
