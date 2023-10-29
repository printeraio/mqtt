healthcheck:
	docker exec -it emqx1 sh -c "emqx ctl cluster status"

build:
	docker-compose build

up:
	docker-compose up -d

build-up: build up