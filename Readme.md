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





