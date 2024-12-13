.PHONY: install test lint format run clean

install_vk:
	bash install_vk-api.sh

install:
	pip install -r requirements.txt

test:
	pytest

lint:
	flake8 src tests

format:
	black src tests

run:
	python -m src.main

clean:
	rm -rf __pycache__ .pytest_cache
