---
title: FastAPI
layout: upj_design
addr: /fastapi/
permalink: /fastapi/
---

#### Table Of Contents

- TOC
{:toc}

## 사용팁
{: #upj_1703308040150}

### 코딩애플 비디오 요약
{: #upj_1703246876855}

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

## 공식 튜토리얼
{: #upj_1703307119262}

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

Union을 사용하여 정수 또는 문자열을 받는 간단한 엔드포인트

```python
from fastapi import FastAPI
from typing import Union

app = FastAPI()

@app.post("/items/")
async def create_item(item: Union[int, str]):
    return {"item": item}
```

HTML Post 예제

main.py
```python
from fastapi import FastAPI, Form, Request
from typing import Union
from pydantic import BaseModel
from fastapi.templating import Jinja2Templates
app = FastAPI()
templates = Jinja2Templates(directory='./templates')

@app.get('/login')
def get_login_form(request: Request):
    return templates.TemplateResponse(
        'test.html', context={'request': request, 'id': 2}
    )

@app.post('/login')
def login(username:str=Form(...), password:str=Form(...)):
    return {'username': username, 'password': password}
```

test.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<form method="post">
<input type="string" name="username" value="{{username}}" />
<input type="password" name="password" value="{{password}}" />

<input type="text" value="{{id}}" disabled />
<input type="submit" value="Submit" />
</form>
</body>
</html>
```

파일 업로드 예제

main.py

```python
from fastapi import FastAPI, Form, Request, File, UploadFile
from typing import Union, List
from pydantic import BaseModel
from fastapi.templating import Jinja2Templates
app = FastAPI()
templates = Jinja2Templates(directory='./templates')

@app.get('/files')
def get_login_form(request: Request):
    return templates.TemplateResponse(
        'test1.html', context={'request': request}
    )

@app.post('/files')
def create(files: List[bytes]=File(...)):
    return  {'file_sizes': [len(file) for file in files]}

@app.get('/uploadedfiles')
def get_login_form(request: Request):
    return templates.TemplateResponse(
        'test2.html', context={'request': request}
    )

@app.post('/uploadedfiles')
def create_uploaded(files: List[UploadFile]=File(...)):
    return {'file_sizes': [file.filename for file in files]}
```

test1.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<input type="file" multiple name="files" />
<input type="submit" value="Submit" />
</form>
</body>
</html>
```

test2.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
<input type="file" multiple name="files" />
<input type="submit" value="Submit" />
</form>
</body>
</html>
```

### Body - Multiple Parameters
{: #upj_1703329290140}

```python
from fastapi import FastAPI, Form, Request, File, UploadFile
from typing import Union, List
from pydantic import BaseModel
app = FastAPI()

class Item(BaseModel):
    name: str 
    description: Union[str, None] = None
    price: float 
    tax: Union[float, None] = None 

class User(BaseModel):
    username: str 
    full_name: Union[str, None] = None

@app.put('/items/{item_id}')
async def update_item(item_id: int, item: Item, user: User):
    results = {
        'item_id': item_id,
        'item': item,
        'user': user
    }
    return results
```

### Body - Nested Models
{: #upj_1703332157947}

main.py

```python
from fastapi import FastAPI, Form, Request, File, UploadFile
from typing import Union, List, Set
from pydantic import BaseModel, HttpUrl
app = FastAPI()

class Image(BaseModel):
    url: HttpUrl
    name: str

class Item(BaseModel):
    name: str 
    description: Union[str, None] = None
    price: float 
    tax: Union[float, None] = None 
    tags: Set[str] = set()
    images: Union[List[Image], None] = None

@app.put('/items/{item_id}')
async def update_item(item_id: int, item: Item):
    results = {
        'item_id': item_id,
        'item': item
    }
    return results
```

Bodies of pure lists

```python
from fastapi import FastAPI, Form, Request, File, UploadFile
from typing import Union, List, Set
from pydantic import BaseModel, HttpUrl
app = FastAPI()

class Image(BaseModel):
    url: HttpUrl
    name: str

@app.post('/images/multiple/')
async def create_multiple_images(images: List[Image]):
    return images
```


