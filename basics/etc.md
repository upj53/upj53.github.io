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

## gVim _vimrc setting
{: #upj_1676506057965}

```text
" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

colorscheme torte
set nocp
set number
set ts=2
set sts=2
set laststatus=2
set shiftwidth=2
set smarttab
set smartindent
set softtabstop=2
set bs=eol,start,indent
set ruler
set guifont=Bitstream_Vera_Sans_Mono:h27:cHANGEUL
set noundofile
set nobackup
```