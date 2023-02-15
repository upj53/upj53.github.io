---
title: Missions
layout: upj_design
permalink: /missions/
---

<h1>미션</h1>

미션을 완료할 수 있습니다.

<h2>Git 활용 프로젝트</h2>

<h3>Git 미션 1 - IDE 와 Git</h3>

미션
: 다음 IDE 중 하나를 사용하여 (이클립스 / 인텔리제이 / 안드로이드 스튜디오) 나의 Github 계정을 연결한 후 repository 를 생성하고 commit 과 push 하세요.

<h3>Git 미션 2 - branch 와 merge</h3>

미션
: 사칙연산 모듈을 Java 를 사용해서 만들려고 합니다.
: 각 연산을 함수로 만들어 작성하고, 연산 기능을 만들 때마다 branch 를 만들어 git 에 업로드 하고,
: 완성 후 기본 브랜치에 병합(merge)하세요.

<h3>Git 미션 3 - 협업</h3>

미션
: 도형의 넓이를 계산하는 모듈을 Java 를 사용해서 만들려고 합니다.
: 한사람은 삼각형을 계산하는 클래스를 각각 만들고, 다른 한 사람은 원을 계산하는 클래스를 각각 만든 후 하나의 모듈로 합쳐서 완성하세요.

깃 브랜치

```text
  main(master) ← 기본 브랜치
  ├ triangle
  └ circle
```

소스코드

```java
---Main.java---

class Main {
  public static void main(String[] args) {
  }
}
---Shape.java---

public interface Shape {
  double getArea();
}
---Triangle.java---

public class Triangle implements Shape {
}
---Circle.java---

public class Circle implements Shape {
}
```

<h2>Linux 활용 프로젝트</h2>

<h3>Linux 미션 1 - 환경변수에 추가</h3>

미션
: 다음 경로에 디렉터리를 생성(/opt/jdk11/)하고 해당 경로를 PATH 환경변수에 추가하세요.

<h3> Linux 미션 2 - alias 생성</h3>

미션
: alias 사용해서 c 라는 명령어를 치면 clear 를 실행해서 화면을 깨끗하게 하도록 하세요.

<h3>Linux 미션 3 - vim 다루기</h3>

미션
: vim 편집기를 실행하여 다음 세개의 파일(a.txt, b.txt, c.txt)을 만들고 아래과 같이 화면분할을 하세요.

<a href="/assets/images/linux-missiong-03.png" target="_blank">
<img src="/assets/images/linux-missiong-03.png" style="width: 75%; height:auto; "/>
</a>

<h3>Linux 미션 4 - 소트프 링크(심볼릭)</h3>

미션
: /opt/jdk11/ 폴더에 hello.txt 파일을 만들고 ~/Documents 폴더에 해당 파일의 소프트 링크를 만드세요.

<h3>Linux 미션 5 - 쉘 설정</h3>

 
미션
: Oh My Zsh, PowerLevel10K 를 설치해서 다음과 같이 내가 원하는 모습으로 쉘을 바꿔보세요.

<a href="/assets/images/linux-missiong-05.png" target="_blank">
<img src="/assets/images/linux-missiong-05.png" style="width: 75%; height:auto; "/>
</a>

<h3>Linux 미션 6 - 사용자 권한</h3>

미션
: sungil 이라는 사용자를 생성하고 암호를 12345로 설정한 뒤, 관리자권한을 주세요.
: /opt/jdk11/ 폴더의 소유자를 sungil 사용자로 바꾸고 폴더와 파일의 모든 권한을 다음과 같이 설정하세요.
: 소유자: 쓰기/읽기/실행 가능
: 그룹 사용자: 읽기/실행 가능
: 기타 사용자: 읽기/실행 가능

<h3>Linux 미션 7 - 웹 서버 설치</h3>

미션
: nodejs 를 설치하고 서비스를 구동한 뒤 다음과 같이 http://localhost:8080 페이지를 웹 브라우저에 띄우세요.

<a href="/assets/images/linux-missiong-07.png" target="_blank">
<img src="/assets/images/linux-missiong-07.png" style="width: 75%; height:auto; "/>
</a>
