---
title: Git
layout: upj_design
permalink: /basics/git/
---

# Git
{: #upj_1676460352694}

리누스 토르발스가 개발한 분산형 버전 관리 시스템(VCS)이다.

> 오픈소스계의 영원한 아이돌 리누스 토르발스는 리눅스 커널을 관리하는 기존 툴이 엉망인 것에 너무 빡친 바람에 Git이라는 소스관리 툴을 만든다. 리누스는 하도 빡친 나머지, 단 2주만에 완성하는 기염을 토했다.
> －오픈소스의 승리 중에서.

## Install
{: #upj_1676460515047}

- [git](https://git-scm.com/)
- [GitHub Desktop](https://desktop.github.com/)
- [Sourcetree](https://www.sourcetreeapp.com/)
- [위키백과](https://ko.wikipedia.org/wiki/%EA%B9%83_(%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4))
- [나무위키](https://namu.wiki/w/Git)

## Init my repository
{: #upj_1676460528550}

```shell
git init
git config --global user.name {MY ID}
git config --global user.password {MY PASSWORD}
git remote add origin {MY REMOTE GIT ADDRESS}
git pull origin master
```

## Pull and Push
{: #upj_1676460536207}

### Trace my status
{: #upj_1676460541534}

```shell
git add -A
git status
```

### Save and Upload
{: #upj_1676460546359}

```shell
git add .
git commit -m '{MY MESSAGE}'
git push origin +master ← {MY MAIN BRANCH NAME}
git push origin +{MY BRANCH NAME}
```

## Branch
{: #upj_1676460553895}

### List Branch
{: #upj_1676460563551}

```shell
     Local Branch
git branch  -a

     Remote Branch
git branch  -r
```

### Create Branch and Move to the branch created
{: #upj_1676460569366}

```shell
git branch {MY BRANCH NAME}
git checkout {MY BRANCH NAME}

     ▼ all together

git checkout -b {MY BRANCH NAME}
```

### Delete Branch
{: #upj_1676460576919}

```shell
     Local Branch
git branch -d {MY LOCAL BRANCH NAME}
git branch -D {MY LOCAL BRANCH NAME}  ←  Force to delete

     Remote Branch
git push origin --delete {MY REMOTE BRANCH NAME}
```

### Rename Branch
{: #upj_1676460583039}

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
{: #upj_1676460588295}

### Merge Branch
{: #upj_1676460597143}

```shell
git checkout master
git merge {MY BRANCH NAME}
```

### Merge Specific File Only
{: #upj_1676460604606}

```shell
git checkout -p  {MY BRANCH NAME} -- {MY FILE NAME}
git checkout -p   ParkWonjune   index.md
```

## Tips
{: #upj_1676508313337}

### .gitignore 가 제대로 작동 안할 때
{: #upj_1676508319848}

```shell
git rm -r --cached .
git add .
git commit -m "fixed untracked files"
```