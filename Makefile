composer:
	docker run --rm -it -v $$(pwd):/app -w /app roquie/composer-parallel install

test: composer
	docker run --rm -it -v $$(pwd):/app -w /app -e CHROME_HEADLESS=true zaherg/laravel-dusk:latest /app/tests.sh
