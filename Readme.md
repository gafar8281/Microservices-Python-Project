[![Python application test with Github Actions](https://github.com/gafar8281/Microservices-Python-Project/actions/workflows/devops.yml/badge.svg)](https://github.com/gafar8281/Microservices-Python-Project/actions/workflows/devops.yml)

[![Python application test with Github Actions](https://codebuild.ap-south-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiZm8wai8ydXpyY0Z4NDl5TkRQVVFncWFpNWo4ZTEwcDBQRkUrZ0tPcUtuZXJuK0tNNjczSkhXa2Jwd0FnVW9KZkFqVytULzl0d29BZUkzU0lybTNXWlNZPSIsIml2UGFyYW1ldGVyU3BlYyI6InF2VEplcHdKKzJYSXJRbm4iLCJtYXRlcmlhbFNldFNlcmlhbCI6Mn0%3D&branch=main)

# Python Microservices Project with CI/CD

## Project Overview :
This project is a fully functional Python microservice application that covers the full software engineering lifecycle:

- 🔧 CLI Tool using Python's fire library
- 🌐 FastAPI Web Service with REST endpoints
- 🧪 Unit testing with Pytest and coverage reports
- 💅 Code quality enforcement with black and pylint
- ⚙️ Automated workflow using GitHub Actions (CI)
- ☁️ Cloud Deployment via AWS CodeBuild, ECR, and App Runner (CD)
- 🐳 Containerized using Docker

This project demonstrates industry-level practices in Continuous Integration (CI) and Continuous Deployment (CD) for scalable and maintainable services.


## Environment Setup
<pre># Create a virtual environment
virtualenv ~/.venv
source ~/.venv/bin/activate

# Install dependencies
make install</pre>
Makefile automates all important commands like installing dependencies, formatting code, running tests, and building Docker images.


## Testing
- Written using pytest and pytest-cov for code coverage
- Run tests:
<pre>make test</pre> 


## Code Quality
- black for code formatting
- pylint for code linting
<pre>make format
make lint</pre> 
CI will fail if linting or formatting checks do not pass.

## CLI Tool with Fire
- fire is used to run Python functions from the terminal.
<pre>chmod +x cli-fire.py

# View help
./cli-fire.py --help

# Search Wikipedia
./cli-fire.py --name Barack_Obama</pre> 


## Docker Support
- Built and tested Docker container locally
<pre>make build
make run</pre>


## CI/CD Pipeline
### GitHub Actions (CI)
- Automated workflow using .github/workflows/devops.yml
- Runs lint, format, test, and build on every commit

### AWS CodeBuild (CI)
- Mirroring GitHub Actions CI inside AWS
- Managed with buildspec.yml
- Automatically pushes Docker image to AWS ECR

## Deployment on AWS
- ECR (Elastic Container Registry)
- Created ECR repo and pushed image via CodeBuild
### App Runner (CD)
- Connected ECR with App Runner
- Auto-deploy on every new ECR image update

