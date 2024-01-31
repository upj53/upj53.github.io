[![pages-build-deployment](https://github.com/upj53/upj53.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/upj53/upj53.github.io/actions/workflows/pages/pages-build-deployment)

# upj53.github.io

- [Ruby 3.1 Download](https://www.ruby-lang.org/ko/downloads/)
- [Jekyll Install](https://jekyllrb.com/docs/installation/ubuntu/)

```shell
# ruby --version
ruby 3.1.3p185 (2022-11-24 revision 1a6b16756e) [x64-mingw-ucrt]

# ruby source build
./configure
make
sudo make install

# Jekyll Install
sudo apt install build-essential zlib1g-dev -y

# Jekyll config
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# install Jekyll and Bundler
gem install jekyll bundler

# download github.io source code and install
bundle install
bundle exec jekyll serve --host 0.0.0.0 --watch --drafts

# run server
nohup bundle exec jekyll serve --host 0.0.0.0 --watch --drafts &

# check server
tail -f nohup.out

# find service and stop it
lsof -i :4000
kill -9 PID번호
```

# Templates

```text
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
```

**열고닫기**

```html
<!--열려있음-->
<details open>
<summary>제목
</summary>
내용
</details>

<!--닫혀있음-->
<details>
<summary>제목
</summary>
내용
</details>
```

**사용팁**

```text
# 링크 새창 열기
[논문](/assets/documents/paper1-2023.pdf){:target="_blank"}

<a href="" target="_blank">
<img src="" style="width:100%; height:auto;"></a>
```

**DEV**

```liquid
{% if jekyll.environment == "development" %}
{% endif %}
```

**파이썬 아이디생성**

```python
# python 생성코드
def my(a):
	b = int(a.split('_')[1].split('}')[0])
	for i in range(100):
		print(f'{{: #upj_{b+i}}}')

id = '{: #upj_1705714728810}'
my(id)
```

**Collections**

```text
안녕하세요. Copilot입니다. Jekyll에서 특정 폴더 아래의 _post에 접근하는 방법은 다음과 같습니다. 먼저, _config.yml 파일에서 다음과 같이 설정합니다.

```
collections:
  my_collection:
    output: true
    permalink: /my_collection/:title/
```

그리고, my_collection 폴더를 만들고 그 안에 _post 폴더를 만듭니다. 그리고나서, my_collection 폴더 안에 있는 _post 폴더에 포스트를 작성하면 됩니다. 이렇게 작성된 포스트는 `site.my_collection`을 통해 접근할 수 있습니다. 예를 들어, my_collection 폴더 안에 있는 post1.md 파일에 접근하려면 `site.my_collection.post1`을 사용하면 됩니다. 이제 이를 활용하여 원하는 작업을 수행하실 수 있습니다.

출처: Bing과의 대화, 2024. 1. 20.
(1) How does Jekyll treat posts in _posts/subdir - Stack Overflow. https://stackoverflow.com/questions/15279147/how-does-jekyll-treat-posts-in-posts-subdir.
(2) [코딩독학] [GitHub Blog - 5] - Jekyll 의 페이지 생성 과정. https://martinkang.github.io/develop/2022/01/15/blog-base-page.html.
(3) [Jekyll] 깃허브 지킬 블로그 글 폴더별로 나누기 (카테고리별 구분 .... https://chaerim-kim.github.io/jekyll%20blog/Jekyll-4/.
(4) Posts | Jekyll • Simple, blog-aware, static sites. https://jekyllrb.com/docs/posts/.
```

# References

- [Markdown-Guide](https://github1s.com/mattcone/markdown-guide/)
- [홍정모](https://jmhongus2019.wixsite.com/mysite)
- [soo:bak's blog](https://soo-bak.github.io/) [github](https://github.com/soo-bak/soo-bak.github.io?tab=readme-ov-file)

<!--
{: #upj_1705714728818}
{: #upj_1705714728819}
{: #upj_1705714728820}
{: #upj_1705714728821}
{: #upj_1705714728822}
{: #upj_1705714728823}
{: #upj_1705714728824}
{: #upj_1705714728825}
{: #upj_1705714728826}
{: #upj_1705714728827}
{: #upj_1705714728828}
{: #upj_1705714728829}
{: #upj_1705714728830}
{: #upj_1705714728831}
{: #upj_1705714728832}
{: #upj_1705714728833}
{: #upj_1705714728834}
{: #upj_1705714728835}
{: #upj_1705714728836}
{: #upj_1705714728837}
{: #upj_1705714728838}
{: #upj_1705714728839}
{: #upj_1705714728840}
{: #upj_1705714728841}
{: #upj_1705714728842}
{: #upj_1705714728843}
{: #upj_1705714728844}
{: #upj_1705714728845}
{: #upj_1705714728846}
{: #upj_1705714728847}
{: #upj_1705714728848}
{: #upj_1705714728849}
{: #upj_1705714728850}
{: #upj_1705714728851}
{: #upj_1705714728852}
{: #upj_1705714728853}
{: #upj_1705714728854}
{: #upj_1705714728855}
{: #upj_1705714728856}
{: #upj_1705714728857}
{: #upj_1705714728858}
{: #upj_1705714728859}
{: #upj_1705714728860}
{: #upj_1705714728861}
{: #upj_1705714728862}
{: #upj_1705714728863}
{: #upj_1705714728864}
{: #upj_1705714728865}
{: #upj_1705714728866}
{: #upj_1705714728867}
{: #upj_1705714728868}
{: #upj_1705714728869}
{: #upj_1705714728870}
{: #upj_1705714728871}
{: #upj_1705714728872}
{: #upj_1705714728873}
{: #upj_1705714728874}
{: #upj_1705714728875}
{: #upj_1705714728876}
{: #upj_1705714728877}
{: #upj_1705714728878}
{: #upj_1705714728879}
{: #upj_1705714728880}
{: #upj_1705714728881}
{: #upj_1705714728882}
{: #upj_1705714728883}
{: #upj_1705714728884}
{: #upj_1705714728885}
{: #upj_1705714728886}
{: #upj_1705714728887}
{: #upj_1705714728888}
{: #upj_1705714728889}
{: #upj_1705714728890}
{: #upj_1705714728891}
{: #upj_1705714728892}
{: #upj_1705714728893}
{: #upj_1705714728894}
{: #upj_1705714728895}
{: #upj_1705714728896}
{: #upj_1705714728897}
{: #upj_1705714728898}
{: #upj_1705714728899}
{: #upj_1705714728900}
{: #upj_1705714728901}
{: #upj_1705714728902}
{: #upj_1705714728903}
{: #upj_1705714728904}
-->
