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

### 필수 문법
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

### **C**reate
{: #upj_1705714728886}



### **R**ead
{: #upj_1705714728887}

### **U**pdate
{: #upj_1705714728888}

### **D**elete
{: #upj_1705714728889}

### 로그인 & 로그아웃
{: #upj_1705714728890}

