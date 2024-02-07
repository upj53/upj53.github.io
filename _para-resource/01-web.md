---
title: Web
layout: upj_design
permalink: /resource/web/
---

#### Table Of Contents

- TOC
{:toc}

## 사용팁
{: #upj_1703483602407}

### Bootstrap 5
{: #upj_1703483627304}

```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
```

<!--

### JS fetch
{: #upj_1703824233619}

```javascript
```

## Snippets
{: #upj_1703496180623}

### Headers
{: #upj_1703496259873}

### Heros
{: #upj_1703496283059}

### Features
{: #upj_1703496299485}

### Sidebars
{: #upj_1703496317663}

## Custom Components
{: #upj_1703496336538}

### Album
{: #upj_1703496349725}

### Pricing
{: #upj_1703496359293}

### Checkout
{: #upj_1703496370341}

### Product
{: #upj_1703496379625}

### Cover
{: #upj_1703496390463}

### Carousel
{: #upj_1703496404221}

### Blog
{: #upj_1703496418926}

### Dashboard
{: #upj_1703496431806}

### Sign-in
{: #upj_1703496443803}

### Sticky footer
{: #upj_1703496454759}

### Sticky footer navbar
{: #upj_1703496471844}

### Jumbotron
{: #upj_1703496483764}

## Framework
{: #upj_1703496502036}

-->

### Starter template
{: #upj_1703496516531}

[Starter template](https://getbootstrap.kr/docs/5.0/examples/starter-template/){:target="_blank"}

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Starter Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/starter-template/">

    

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
  </head>
  <body>
    
<div class="col-lg-8 mx-auto p-3 py-md-5">
  <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
    <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img"><title>Bootstrap</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
      <span class="fs-4">Starter template</span>
    </a>
  </header>

  <main>
    <h1>Get started with Bootstrap</h1>
    <p class="fs-5 col-md-8">Quickly and easily get started with Bootstrap's compiled, production-ready files with this barebones example featuring some basic HTML and helpful links. Download all our examples to get started.</p>

    <div class="mb-5">
      <a href="../examples/" class="btn btn-primary btn-lg px-4">Download examples</a>
    </div>

    <hr class="col-3 col-md-2 mb-5">

    <div class="row g-5">
      <div class="col-md-6">
        <h2>Starter projects</h2>
        <p>Ready to beyond the starter template? Check out these open source projects that you can quickly duplicate to a new GitHub repository.</p>
        <ul class="icon-list">
          <li><a href="https://github.com/twbs/bootstrap-npm-starter" rel="noopener" target="_blank">Bootstrap npm starter</a></li>
          <li class="text-muted">Bootstrap Parcel starter (coming soon!)</li>
        </ul>
      </div>

      <div class="col-md-6">
        <h2>Guides</h2>
        <p>Read more detailed instructions and documentation on using or contributing to Bootstrap.</p>
        <ul class="icon-list">
          <li><a href="../getting-started/introduction/">Bootstrap quick start guide</a></li>
          <li><a href="../getting-started/webpack/">Bootstrap Webpack guide</a></li>
          <li><a href="../getting-started/parcel/">Bootstrap Parcel guide</a></li>
          <li><a href="../getting-started/build-tools/">Contributing to Bootstrap</a></li>
        </ul>
      </div>
    </div>
  </main>
  <footer class="pt-5 my-5 text-muted border-top">
    Created by the Bootstrap team &middot; &copy; 2021
  </footer>
</div>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>
```

```css
.icon-list {
  padding-left: 0;
  list-style: none;
}
.icon-list li {
  display: flex;
  align-items: flex-start;
  margin-bottom: .25rem;
}
.icon-list li::before {
  display: block;
  flex-shrink: 0;
  width: 1.5em;
  height: 1.5em;
  margin-right: .5rem;
  content: "";
  background: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23212529' viewBox='0 0 16 16'%3E%3Cpath d='M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z'/%3E%3C/svg%3E") no-repeat center center / 100% auto;
}
```

### Grid
{: #upj_1703496529233}

[Grid](https://getbootstrap.kr/docs/5.0/examples/grid/){:target="_blank"}


### Cheatsheet
{: #upj_1703496548880}

[Cheatsheet](https://getbootstrap.kr/docs/5.0/examples/cheatsheet/){:target="_blank"}

<!--

## Navbars
{: #upj_1703496680627}

### Navbars
{: #upj_1703496691955}

### Navbar static
{: #upj_1703496702041}

### Navbar fixed
{: #upj_1703496716050}

### Navbar bottom
{: #upj_1703496724618}

### Offcanvas navbar
{: #upj_1703496739375}

-->

## FastAPI + Svelte
{: #upj_1705753377209}

### 문법
{: #upj_1705753410367}

```html
1. 분기문
{#if 조건문1}
    <p>조건문1에 해당하면 실행</p>
{:else if 조건문2}
    <p>조건문2에 해당하면 실행</p>
{:else}
    <p>조건문1, 2 모두 해당하지 않으면 실행</p>
{/if}

2. 반복문
{#each list as item, index}
    <p>순서: {index} </p>
    <p>{item}</p>
{/each}
index는 반복순서를 의미하고 0부터 1씩 증가한다.
(index는 each문에서 생략 가능하다.)

3. 객체 표시
{객체}
{객체.속성}
```

### FastAPI 기본구조
{: #upj_1705714728884}

폴더 구조

```text
┳(frontend)
┃  └ (assets)
┠(models)
┃  ├ __init__.pyp
┃  └ 
┠(modules)
┃  ├ __init__.pyp
┃  └ 
┠(routers)
┃  ├ __init__.pyp
┃  └ 
┠(schemas)
┃  ├ __init__.pyp
┃  └ 
┠ main.py
┠ 
┖ .env
```

### Svelte 기본구조
{: #upj_1705714728885}

폴더 구조

```text
┳(assets)
┃  └ svelte.svg
┠(components)
┃  ├ Error.svelte
┃  └ Navigation.svelte
┠(lib)
┃  ├ app.js
┃  └ store.js
┠(routes)
┃  ├ Home.svelte
┃  └ 
┠ App.svelte
┠ app.css
┠ main.js
┖ .env
```

/App.svelte

```html
<script>
  import Router from "svelte-spa-router";
  import Home from "./routes/Home.svelte";
  import Detail from "./routes/Detail.svelte";
  import QuestionCreate from "./routes/QuestionCreate.svelte";
  import Navigation from "./components/Navigation.svelte";
  import UserCreate from "./routes/UserCreate.svelte";
  import UserLogin from "./routes/UserLogin.svelte";
  import QuestionModify from "./routes/QuestionModify.svelte";
  import AnswerModify from "./routes/AnswerModify.svelte";

  const routes = {
    "/": Home,
    "/detail/:question_idx": Detail,
    "/question-create": QuestionCreate,
    "/user-create": UserCreate,
    "/user-login": UserLogin,
    "/question-modify/:question_id": QuestionModify,
    "/answer-modify/:answer_id": AnswerModify,
  };
</script>

<Navigation />
<Router {routes} />
```

/app.css

```css
:root {
  font-family: Inter, system-ui, Avenir, Helvetica, Arial, sans-serif;
  line-height: 1.5;
  font-weight: 400;

  color-scheme: light dark;

  font-synthesis: none;
  text-rendering: optimizeLegibility;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
```

/main.js

```javascript
import './app.css'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.js'
import App from './App.svelte'

const app = new App({
  target: document.getElementById('app'),
})

export default app
```

### **C**reate
{: #upj_1705714728886}

FRONT /routes/UserCreate.svelte

```html
<script>
  import { push } from "svelte-spa-router";
  import fastapi from "../lib/api";
  import Error from "../components/Error.svelte";

  let error = { detail: [] };
  let username = "";
  let password1 = "";
  let password2 = "";
  let email = "";

  function post_user(event) {
    event.preventDefault();
    let url = "/pybo/user/create";
    let params = {
      username: username,
      password1: password1,
      password2: password2,
      email: email,
    };
    fastapi(
      "post",
      url,
      params,
      (json) => {
        push("/user-login");
      },
      (json_error) => {
        error = json_error;
      },
    );
  }
</script>

<div class="container">
  <h5 class="my-3 border-bottom pb-2">회원가입</h5>
  <Error {error} />
  <form method="post">
    <div class="mb-3">
      <label for="username">사용자 이름</label>
      <input
        type="text"
        class="form-control"
        id="username"
        bind:value={username}
      />
    </div>
    <div class="mb-3">
      <label for="password1">비밀번호</label>
      <input
        type="password"
        class="form-control"
        id="password1"
        bind:value={password1}
      />
    </div>
    <div class="mb-3">
      <label for="password2">비밀번호 확인</label>
      <input
        type="password"
        class="form-control"
        id="password2"
        bind:value={password2}
      />
    </div>
    <div class="mb-3">
      <label for="email">이메일</label>
      <input type="email" class="form-control" id="email" bind:value={email} />
    </div>
    <button class="btn btn-primary" type="submit" on:click={post_user}
      >생성하기</button
    >
  </form>
</div>
```

FRONT /components/Error.svelte

```html
<script>
  export let error;
</script>

{#if typeof error.detail === "string"}
  <div class="alert alert-danger">{error.detail}</div>
{:else if typeof error.detail === "object" && error.detail.length > 0}
  <div class="alert alert-danger">
    {#each error.detail as err, i}
      <div>
        <string>{err.loc[1]}</string> : {err.msg}
      </div>
    {/each}
  </div>
{/if}
```

FRONT /lib/api.js

```javascript
import qs from "qs"
import { access_token, username, is_login } from "./store"
import { get } from 'svelte/store'
import { push } from 'svelte-spa-router'

const fastapi = (operation, url, params, success_callback, failure_callback) => {
  let method = operation
  let content_type = 'application/json'
  let body = JSON.stringify(params)

  if (operation === 'login') {
    method = 'post'
    content_type = 'application/x-www-form-urlencoded'
    body = qs.stringify(params)
  }

  let _url = import.meta.env.VITE_SERVER_URL + url
  if (method === 'get') {
    _url += '?' + new URLSearchParams(params)
  }

  let options = {
    method: method,
    headers: {
      'Content-Type': content_type
    }
  }

  const _access_token = get(access_token)
  // console.log(`_access_token=${_access_token}`)
  if (_access_token) {
    // console.log(`_access_token=${_access_token}`)
    // 'Bearer ' Bearer뒤에 띄어쓰기를 꼭 해야한다.
    options.headers['Authorization'] = 'Bearer ' + _access_token 
  }

  if (method !== 'get') {
    options['body'] = body
  }

  fetch(_url, options)
    .then(response => {
      if (response.status === 204) { // No content
        if (success_callback) {
          // console.log(`response.status === 204`)
          success_callback()
        }
        return
      }
      response.json()
        .then(json => {
          if (response.status >= 200 && response.status < 300) { // 200~299
            if (success_callback) {
              success_callback(json)
            }
          } else if (operation !== 'login' && response.status === 401) { // token time out
            access_token.set('')
            username.set('')
            is_login.set(false)
            alert('로그인이 필요합니다')
            push('/user-login')
          } else {
            if (failure_callback) {
              failure_callback(json)
            } else {
              console.log(json)
            }
          }
        })
        .catch(error => {
          console.log(error)
        })
    }
    )
}

export default fastapi
```

BACK /main.py

```python
# python libraries
from dotenv import dotenv_values
from fastapi import FastAPI, Form, Request, File, UploadFile, Depends, Body
from fastapi.responses import HTMLResponse, FileResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from starlette.middleware.cors import CORSMiddleware
from starlette.responses import RedirectResponse
from typing import Union, List, Set, Annotated, Dict, Any
from pydantic import BaseModel, HttpUrl
import os
import time
import requests

# user libraries
from modules.db import session
from routers import *
from models import *

app = FastAPI(dependencies=[Depends(get_query_token)])
app.include_router(router_pybo.router)

config = dotenv_values('.env')
domain = config['DOMAIN_URL']
app.add_middleware(
    CORSMiddleware,
    allow_origins=['*'],
    allow_credentials=True,
    allow_methods=['*'],
    allow_headers=['*']
)
app.mount('/static', StaticFiles(directory='./static'), name='static')
app.mount('/assets', StaticFiles(directory='./frontend/assets'))

@app.get('/test-pybo-svelte')
async def test_pybo_index():
    return FileResponse('./frontend/index-pybo.html')
```

BACK /routers/router_pybo.py

__init__.py

```pytyon
import routers.router_pybo
import routers.router_edu
```

```python
# python libraries
from fastapi import FastAPI, Form, Request, File, UploadFile, Depends, Body
from fastapi import APIRouter, Depends, HTTPException, Body
from fastapi.responses import HTMLResponse, FileResponse
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from jose import jwt, JWTError
from datetime import timedelta, datetime
from pydantic import BaseModel
from fastapi.templating import Jinja2Templates
from dotenv import dotenv_values
from typing import Annotated
from sqlalchemy.orm import Session
from starlette import status

# user libraries
from modules.db import get_db
from models import *
from schemas import *
from modules import *

# import secrets
# secrets.token_hex(32)
router = APIRouter(prefix="/pybo", tags=["pybo"])
config = dotenv_values(".env")

ACCESS_TOKEN_EXPIRE_MINUTES = 60*24
SECRET_KEY = 'f9d2b97ee5c112796127fc6af1b1d19b0d80d97142b80f5bbb635665f85f1c6f'
ALGORITHM = 'HS256'
oauth2_scheme = OAuth2PasswordBearer(tokenUrl='/pybo/user/login')


def get_current_user(
        token: str = Depends(oauth2_scheme),
        db: Session = Depends(get_db)):
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail='Could not validate credentials',
        headers={'WWW-Authenticate': 'Bearer'},
    )
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get('sub')
        if username is None:
            raise credentials_exception
    except JWTError:
        raise credentials_exception
    else:
        user = pybo_get_user(db, username)
        if user is None:
            raise credentials_exception
        return user


@router.post('/user/create', status_code=status.HTTP_204_NO_CONTENT)
async def user_create(
        _user_create: PyboUserCreateSchema,
        db: Session = Depends(get_db)):
    user = pybo_get_existing_user(db, _user_create)
    if user:
        raise HTTPException(
            status_code=status.HTTP_409_CONFLICT,
            detail='이미 존재하는 사용자 아이디 또는 이메일입니다.'
        )
    pybo_create_user(db, _user_create)


@router.post('/user/login', response_model=PyboTokenSchema)
async def login_for_access_token(
        form_data: OAuth2PasswordRequestForm = Depends(),
        db: Session = Depends(get_db)):
    # check user and password
    user = pybo_get_user(db, form_data.username)
    print(f'{form_data.username}, {form_data.password}')
    print(f'{user.username}, {user.password}')
    if not user or not pwd_context.verify(form_data.password, user.password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail='Incorrect username or password',
            headers={'WWW-Authenticate': 'Bearer'}
        )

    # make access token
    data = {
        'sub': user.username,
        'exp': datetime.utcnow()+timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    }
    access_token = jwt.encode(data, SECRET_KEY, algorithm=ALGORITHM)

    return {
        'access_token': access_token,
        'token_type': 'bearer',
        'username': user.username
    }
```

BACK /models/pybo_models.py

```python
# python libraries
from sqlalchemy import Column, Integer, String, Text, DateTime, ForeignKey, Table
from sqlalchemy.orm import relationship
from pydantic import BaseModel

# user libraries
from modules.db import Base
from modules.db import ENGINE

class PyboUserModel(Base):
    __tablename__ = 'pybo_user'
    idx = Column(Integer, primary_key=True)
    username = Column(String(30), unique=True, nullable=False)
    password = Column(String(100), nullable=False)
    email = Column(String(50), unique=True, nullable=False)


Base.metadata.create_all(bind=ENGINE)
```

BACK /schemas/pybo_schemas.py

```python
# python libraries
import datetime
from pydantic import BaseModel, EmailStr
from pydantic import field_validator
from pydantic_core.core_schema import FieldValidationInfo


class PyboUserSchema(BaseModel):
    idx: int
    username: str
    email: str


class PyboUserCreateSchema(BaseModel):
    username: str
    password1: str
    password2: str
    email: EmailStr

    @field_validator('username', 'password1', 'password2', 'email')
    def not_empty(cls, v):
        if not v or not v.strip():
            raise ValueError('빈 값은 허용되지 않습니다')
        return v

    @field_validator('password2')
    def passwords_match(cls, v, info: FieldValidationInfo):
        if 'password1' in info.data and v != info.data['password1']:
            raise ValueError('비밀번호가 일치하지 않습니다')
        return v
```

BACK /modules/pybo_crud.py

```python
# python libraries
from sqlalchemy.orm import Session
from sqlalchemy import and_
from datetime import datetime
from passlib.context import CryptContext

# user libraries
from models import *
from schemas import *

pwd_context = CryptContext(schemes=['bcrypt'], deprecated='auto')


def pybo_create_user(db: Session, user_create: PyboUserCreateSchema):
    db_user = PyboUserModel(
        username=user_create.username,
        password=pwd_context.hash(user_create.password1),
        email=user_create.email
    )
    db.add(db_user)
    db.commit()


def pybo_get_existing_user(db: Session, user_create: PyboUserCreateSchema):
    return db.query(PyboUserModel).filter(
        (PyboUserModel.username == user_create.username) |
        (PyboUserModel.email == user_create.email)
    ).first()


def pybo_get_user(db: Session, username: str):
    return db.query(PyboUserModel).filter(PyboUserModel.username == username).first()


def pybo_make_db(db: Session):
    user1 = pybo_get_user(db, 'test1')
    user2 = pybo_get_user(db, 'test2')
    for i in range(5):
        # subject = f'테스트 데이터 {i+1:03d}'
        # print(subject)
        if i < 3:
            q = PyboQuestionModel(
                subject=f'테스트 데이터 {i+1:03d}',
                content=f'내용없음 {i+1:03d}',
                create_date=datetime.now(),
                user=user1)
            db.add(q)
        else:
            q = PyboQuestionModel(
                subject=f'테스트 데이터 {i+1:03d}',
                content=f'내용없음 {i+1:03d}',
                create_date=datetime.now(),
                user=user2)
            db.add(q)
    db.commit()
```

### **R**ead
{: #upj_1705714728887}

### **U**pdate
{: #upj_1705714728888}

### **D**elete
{: #upj_1705714728889}

### 로그인 & 로그아웃
{: #upj_1705714728890}

