install:
	#install commands
	pip install --upgrade pip &&\
	    pip install -r requirements.txt

format:
	#format the code
	black *.py mylib/*.py
lint:
	#py lint
	pylint --disable=R,C *.py mylib/*.py

test:
	#test code
	python -m pytest -vv --cov=mylib --cov=main test_*.py

build:
	# build docker image
	# docker build -t deploy-fastapi .
	docker build .

run:
	# run docker file
	docker run -p 127.0.0.1:8080:8080 53f8faee6c25
	
deploy:
	#deploy

all: install format lint deploy
