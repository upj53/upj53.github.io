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
# python 생성코드
def my(a):
	b = int(a.split('_')[1].split('}')[0])
	for i in range(100):
		print(f'{{: #upj_{b+i}}}')

id = '{: #upj_1705714728810}'
my(id)
```

# References

- [Markdown-Guide](https://github1s.com/mattcone/markdown-guide/)
- [홍정모](https://jmhongus2019.wixsite.com/mysite)
- [soo:bak's blog](https://soo-bak.github.io/) [github](https://github.com/soo-bak/soo-bak.github.io?tab=readme-ov-file)

<!--
{: #upj_1705714728812}
{: #upj_1705714728813}
{: #upj_1705714728814}
{: #upj_1705714728815}
{: #upj_1705714728816}
{: #upj_1705714728817}
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
{: #upj_1705714728905}
{: #upj_1705714728906}
{: #upj_1705714728907}
{: #upj_1705714728908}
{: #upj_1705714728909}
-->