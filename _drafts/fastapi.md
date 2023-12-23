---
title: FastAPI
layout: upj_design
addr: /drafts/fastapi/
permalink: /drafts/fastapi/
---

#### Table Of Contents

- TOC
{:toc}

## 공식 튜토리얼
{: #upj_1703307119262}

abcdefg

## Official Tutorial
{: #upj_1703308040150}

Query Parameters and String Validations
Path Parameters and Numeric Validations
Body - Multiple Parameters
Body - Fields
Body - Nested Models
Declare Request Example Data
Extra Data Types
Cookie Parameters
Header Parameters
Response Model - Return Type
Extra Models
Response Status Code
Form Data
Request Files
Request Forms and Files
Handling Errors
Path Operation Configuration
JSON Compatible Encoder
Body - Updates
Dependencies
Dependencies
Classes as Dependencies
Sub-dependencies
Dependencies in path operation decorators
Global Dependencies
Dependencies with yield
Security
Security
Security - First Steps
Get Current User
Simple OAuth2 with Password and Bearer
OAuth2 with Password (and hashing), Bearer with JWT tokens
Middleware
CORS (Cross-Origin Resource Sharing)
SQL (Relational) Databases
Bigger Applications - Multiple Files
Background Tasks
Metadata and Docs URLs
Static Files
Testing

### First Steps
{: #upj_1703246876855}

코딩애플 비디오 요약

```python
'''
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
https://upj53api.run.goorm.io
https://upj53api-test.run.goorm.io

Jinja2 템플릿 적용
https://streamls.tistory.com/entry/FastAPI-MySQL-CRUD-1
FastAPI
https://fastapi.tiangolo.com/tutorial/first-steps/
https://fastapi.tiangolo.com/tutorial/path-params/
'''
from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.responses import FileResponse
app = FastAPI()

@app.get('/')
def main():
    return 'hello'

@app.get('/data')
def data():
    return {'hello' : 123}

@app.get('/items/{item_id}')
async def read_item(item_id: int):
    return {'item_id': item_id}

class Model(BaseModel):
    name: str
    age: int

@app.post('/send')
def send(data: Model):
    print(data)
    return '전송 완료'

@app.get('/style')
def style():
    return FileResponse('test.html')

@app.get('/asy')
async def asy():
    # await print('abcdefg')
    return FileResponse('test.html')
```

### Path Parameters
{: #upj_1703246882823}

Path Parameters

```python
from fastapi import FastAPI
from enum import Enum

class ModelName(str, Enum):
    alexnet = 'alexnet'
    resnet = 'resnet'
    lenet = 'lenet'

@app.get('/models/{model_name}')
async def get_model(model_name: ModelName):
    if model_name is ModelName.alexnet:
        return {'model_name': model_name, 'message': 'Deep Leaning FTW!'}
    if model_name.value == 'lenet':
        return {'model_name': model_name, 'message': 'LeCNN all the images'}
    return {'model_name': model_name, 'message': 'Have some residuals'}

# Path convertor
@app.get('/files/{file_path:path}')
async def read_file(file_path: str):
    return {'file_path': file_path}
```

### Query Parameters
{: #upj_1703306703367}

```python
from fastapi import FastAPI
app = FastAPI()

fake_items_db = [
    {'item_name': 'foo'}, {'item_name': 'bar'}, {'item_name': 'baz'}
]

@app.get('/items/')
async def read_item(skip: int = 0, limit: int = 1):
    return fake_items_db[skip: skip + limit]

# https://upj53api-test.run.goorm.io/items/?limit=2
```

### Request Body
{: #upj_1703309283645}

Pydantic 베이스모델

```python
from typing import Union
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    description: Union[str, None] = None
    price: float
    tax: Union[float, None] = None

@app.post('/items')
async def create_item(item: Item):
    return item
```

HTML Post 예제

```python
```

