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

deploy:
	#deploy

all: install format lint deploy
