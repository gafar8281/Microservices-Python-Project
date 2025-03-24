from main import app
from fastapi.testclient import TestClient

client = TestClient(app)


def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Wikipedia API.   Call /search or /find-wiki"}


def test_read_phrases():
    response = client.get("/phrases/Barack_Obama")
    assert response.status_code == 200
    assert response.json() == {
        "result": [
            "barack hussein obama ii",
            "august",
            "american politician",
            "44th president",
        ]
    }
