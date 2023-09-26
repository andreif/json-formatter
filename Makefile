deno = DOCKER_DEFAULT_PLATFORM=linux/amd64 docker run --rm -it --init -v=.:/app -w=/app --user=deno --name=deno ${_} denoland/deno

setup: node_modules

node_modules: package.json
	npm i

clean:
	rm -rf .wire
	rm -rf node_modules

help:
	${deno} --help

repl:
	${deno} repl

build:
	${deno} task build
