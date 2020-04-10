# test_hello.py
from app import app

def test_hello_world():
    response = app.test_client().get('/')

    assert response.status_code == 200
    assert response.data == b'Flask web server in Docker'
