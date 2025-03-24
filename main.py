from fastapi import FastAPI
from mylib.script import wiki, search_wiki, phrase
import uvicorn


app = FastAPI()


@app.get("/")
def read_root():
    return {"message": "Wikipedia API.   Call /search or /find-wiki"}


@app.get("/search/{name}")
def search_wikipedia(name: str):
    result = search_wiki(name)
    return {"result": result}


@app.get("/find-wiki/{value}")
def my_wiki(value: str):
    result = wiki(value)
    return {"result": result}


@app.get("/phrases/{value}")
def phrases(value: str):
    result = phrase(value)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")
