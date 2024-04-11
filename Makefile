.PHONY: start kill build reload

build: start kill
reload: kill start

start:
	docker compose build
	docker compose up -d

kill:
	docker compose kill
	docker compose rm -f

