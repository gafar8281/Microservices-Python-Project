install:
	#install commands
	pip install --upgrade pip &&\
	    pip install -r requirements.txt

post-install:
	python -m textblob.download_corpora

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
	aws ecr get-login-password --region ap-south-1 | docker login --username AbdulGafar --password-stdin "Gafar,6w2}N45" 405399979532.dkr.ecr.ap-south-1.amazonaws.com
	docker build -t fastapi-microservice .
	docker tag fastapi-microservice:latest 405399979532.dkr.ecr.ap-south-1.amazonaws.com/fastapi-microservice:latest
	docker push 405399979532.dkr.ecr.ap-south-1.amazonaws.com/fastapi-microservice:latest

all: install post-install format lint test deploy
