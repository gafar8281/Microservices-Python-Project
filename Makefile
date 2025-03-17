install:
	#install commands
	pip install --upgrade pip &&\
	    pip install -r requirements.txt

format:
	#format the code

lint:
	#py lint

deploy:
	#deploy

all: install format lint deploy
