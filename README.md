[![pages-build-deployment](https://github.com/upj53/upj53.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/upj53/upj53.github.io/actions/workflows/pages/pages-build-deployment)

# upj53.github.io

```shell
bundle install
bundle exec jekyll serve --host 0.0.0.0 --watch --drafts
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

```html
```

**DEV**

```liquid
{% if jekyll.environment == "development" %}
{% endif %}
```

**파이썬 아이디생성**

```python
python 생성코드
def my(a):
	b = int(a.split('_')[1].split('}')[0])
	for i in range(20):
		print(f'{{: #upj_{b+i}}}')

my('{: #upj_1705463826604}')
```

# References

- [Markdown-Guide](https://github1s.com/mattcone/markdown-guide/)
- [홍정모](https://jmhongus2019.wixsite.com/mysite)
- [soo:bak's blog](https://soo-bak.github.io/) [github](https://github.com/soo-bak/soo-bak.github.io?tab=readme-ov-file)
