.PHONY: build test hh_autoload format

build:
	docker build -t mwildehahn/graphql-hack-utils .

install: build
	docker run -v `pwd`:/app -it mwildehahn/graphql-hack-utils composer install

hh_autoload:
	docker run -v `pwd`:/app -it mwildehahn/graphql-hack-utils ./vendor/bin/hh-autoload

test:
	docker run -v `pwd`:/app -it mwildehahn/graphql-hack-utils ./vendor/bin/hacktest tests

format:
	docker run -v `pwd`:/app -it mwildehahn/graphql-hack-utils find {src,tests} -type f -exec hackfmt -i {} \;