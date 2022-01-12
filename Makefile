.PHONY: build
build:
	@docker build --rm --tag jrmsdev/bbb:base ./docker/base

.PHONY: prune
prune:
	@docker system prune -f
