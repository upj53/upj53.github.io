---
title: Git
layout: upj_design
permalink: /basics/git/
---

# Git

Git 활용법

## Install

- [git](https://git-scm.com/)
- [GitHub Desktop](https://desktop.github.com/)
- [Sourcetree](https://www.sourcetreeapp.com/)
- [Wikipedia](https://ko.wikipedia.org/wiki/%EA%B9%83_(%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4))

## Init my repository

```shell
git init
git config --global user.name {MY ID}
git config --global user.password {MY PASSWORD}
git remote add origin {MY REMOTE GIT ADDRESS}
git pull origin master
```

## Pull and Push

### Trace my status

```shell
git add -A
git status
```

### Save and Upload

```shell
git add .
git commit -m '{MY MESSAGE}'
git push origin +master ← {MY MAIN BRANCH NAME}
git push origin +{MY BRANCH NAME}
```

## Branch

### List Branch

```shell
     Local Branch
git branch  -a

     Remote Branch
git branch  -r
```

### Create Branch and Move to the branch created

```shell
git branch {MY BRANCH NAME}
git checkout {MY BRANCH NAME}

     ▼ all together

git checkout -b {MY BRANCH NAME}
```

### Delete Branch

```shell
     Local Branch
git branch -d {MY LOCAL BRANCH NAME}
git branch -D {MY LOCAL BRANCH NAME}  ←  Force to delete

     Remote Branch
git push origin --delete {MY REMOTE BRANCH NAME}
```

### Rename Branch

```shell
     Local Branch
git branch -m {MY OLD BRANCH NAME} {MY NEW BRANCH NAME}

     Remote Branch
git push origin {MY NEW BRANCH NAME}
git push origin --delete {MY OLD BRANCH NAME}

     ↕ Same

git push origin :{MY OLD BRANCH NAME} {MY NEW BRANCH NAME}
```

## Merge

### Merge Branch

```shell
git checkout master
git merge {MY BRANCH NAME}
```

### Merge Specific File Only

```shell
git checkout -p  {MY BRANCH NAME} -- {MY FILE NAME}
git checkout -p   ParkWonjune   index.md
```