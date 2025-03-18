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
	python -m pytest -vv --cov=mylib test_script.py

deploy:
	#deploy

all: install format lint deploy
