---
title: Etc
layout: upj_design
permalink: /basics/etc/
---

#### Table Of Contents

- TOC
{:toc}

## Jekyll install on Windows 10
{: #upj_1676506051294}

Install ruby 3.1.3
[Windows](https://rubyinstaller.org/),
[Linux SourceCode](https://www.ruby-lang.org/en/documentation/installation/#building-from-source)

Install jekyll [Jekyll](https://jekyllrb.com/docs/installation/windows/)

```shell
bundle install
bundle exec jekyll serve
bundle exec jekyll serve --watch --drafts

set JEKYLL_ENV=production 
set JEKYLL_ENV=draft
bundle exec jekyll serve --watch --drafts

Set-Variable -name JEKYLL_ENV -value production; bundle exec jekyll serve --watch --drafts
```

[홈페이지 algolia 검색 설정](https://www.whatap.io/ko/blog/67/),
[algoria 검색 설정](https://lazisimlee.tistory.com/2)

[Code highlight](https://prismjs.com/download.html#themes=prism),
[TOC Customize](http://afeld.github.io/bootstrap-toc/),
[Markdown with IDs](https://about.gitlab.com/blog/2016/07/19/markdown-kramdown-tips-and-tricks/),

## git-bash setting
{: #upj_1676766647770}

```text
# git-bash 세팅
C:\Program Files\Git\etc\profile.d
cd /etc/profile.d
폴더로 이동
vim aliases.sh

# aliases 설정변경
alias l='ls -lt'
alias la='ls -alt'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../../'
```

## Remember checkbox
{: #upj_1676705392731}

[Sample 1](https://www.sitepoint.com/quick-tip-persist-checkbox-checked-state-after-page-reload/),
[Sample 2](http://www.marcorpsa.com/ee/t2641.html)
