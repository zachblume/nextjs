.PHONY: default

default: clean dev

dev:
	npm run dev

test:
	npm run test

debug:
	npm run test:debug

lint:
	npm run lint

build:
	npm install
	npm run build
	npm run start

clean:
	killall node || true
	rm -rf .next node_modules test-results playwright-report
	npm install
