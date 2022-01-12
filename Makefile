.PHONY: build
build:
	@docker build --rm --tag jrmsdev/bbb:base ./docker/base
	@docker build --rm --tag jrmsdev/bbb:devel \
		--build-arg BBB_UID=$$(id -u) \
		--build-arg BBB_GID=$$(id -g) \
		--build-arg BBB_UMASK=$$(umask) \
		./docker/devel

.PHONY: devel
devel:
	@docker run --rm -it --name jrmsdev-bbb-devel \
		--hostname devel.bbb.jrmsdev \
		--read-only \
		-v $(PWD)/src:/home/bbb/src \
		jrmsdev/bbb:devel

.PHONY: prune
prune:
	@docker system prune -f
