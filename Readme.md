[![Python application test with Github Actions](https://github.com/gafar8281/Microservices-Python-Project/actions/workflows/devops.yml/badge.svg)](https://github.com/gafar8281/Microservices-Python-Project/actions/workflows/devops.yml)

SWE Project :

> created a virtual ven "virtualenv ~/.venv"

> create file requirement.txt, make file, docker file, python file . using "touch" command.

> Makefile is to automate the commands. It is used in SWE projets.

17/03
> packages installed = wikipedia, pytest, pytest-cov(give result how many codes we are covered),pylint, black (code formating tool), fire.

> install all package through make file 'make install'. Specifying each package with version number( to make sure project run after 2 years also) 'pip freeze | less' 

> created a Automatic work flow using Github actions. When a commit happen in this file CI with automatically trigger. Created a status badge and pasted on readme file. 

18/03
> format code before pushing to production. To avoid formatting error.

> lint is used to find bad code, that tipically throw error in future development. So, using lint can be helpfull.

> If there is any error, eg: error in lint . CI will throw error during build.

> created test cases for script file.

21/03
> Build cli using python fire library. It make easier to run and manage scripts, pass arguments, and execute functions directly from the terminal. Giving permission "chmod +x cli-fire.py" .

> "./cli-fire.py --help" , "./cli-fire.py --name Barack_Obama" 

> "./cli-fire.py"  run command

> ipython library used to run pyhton code in command line. Use to test function & handy tool.

> Created a new function to search in wikipedia by name. 

> Created a webservice using Fastapi and created api endpoints. Written test cases for FastAPI endpoints.

> Created a new NLP function in script. To find the phrases

24/03
> Created test cases for fast API web app.

> Created a docker image for Fast api and run the docker image.

> Docker file :
Python slim is small image.

> Docker commands : 
"docker build . " - build image  or  "docker build -t deploy-fastapi ." - build image with title.  
"docker run -p 127.0.0.1:8080:8080 c1a36ab4da9d" - run image
"docker image ls" - list images


> "make build" to build image  & make run
