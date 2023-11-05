healthcheck:
	docker exec -it emqx1 sh -c "emqx ctl cluster status"

build:
	docker-compose build

up:
	docker-compose up -d

clean-all:
	@rm -f rebar.lock
	@rm -rf deps
	@rm -rf _build
	@rm -f emqx_dialyzer_*_plt


build-up: build up