.PHONY: build
build:
	@docker build --rm --tag jrmsdev/bbb:base ./docker

.PHONY: prune
prune:
	@docker system prune -f
