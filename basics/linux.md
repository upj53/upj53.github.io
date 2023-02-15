---
title: Linux
layout: upj_design
permalink: /basics/linux/
---

<h1 id="upj_1676435695963">Linux 활용법</h1>

컴퓨터 OS 커널의 일종인 리눅스 커널, 또는 리눅스 커널을 사용하는 운영체제를 가리키는 말이기도 하다. GNU 쪽 사람들은 리눅스는 커널일 뿐이고, 이 커널을 가져다가 GNU 프로그램들을 올려 만든 운영체제는 GNU/Linux라고 이야기하며 이런 명칭에 민감하게 반응하는 경우도 있다. 소스 코드가 공개되어 있는 대표적인 오픈 소스 소프트웨어다. 컴퓨터 역사상 가장 많은 참여자가 관여하고 있는 오픈 소스 프로젝트다. 모바일 운영체제로 유명한 안드로이드 역시 리눅스 커널을 가져다 쓰고 있다.

Linux라는 이름은 Linus' *nix, 리누스의 유닉스라는 뜻으로 지어졌다. *nix는 Unix 계열 운영체제라는 뜻이다. 나중에 Linux Is Not UniX라는 재귀약자를 새로 만들어냈다.

리눅스 재단에 따르면 퍼블릭 클라우드 컴퓨팅 워크로드의 90%, 스마트폰의 82%, 임베디드 기기의 62%, 슈퍼 컴퓨터 시장의 99%가 리눅스로 작동한다.

2007년부터 2019년 사이의 리눅스 커널 참여자 중 회사순위를 보면 1위 인텔 (10.01%), 2위 레드햇 (8.90%), 3위 IBM (3.79%), 4위 SUSE (3.49%), 5위 Linaro (3.17%), 6위 구글 (2.79%), 7위 삼성전자 (2.58%), 8위 AMD (2.28%), 9위 르네사스 (1.99%), 10위 텍사스 인스트루먼트 (1.78%), 11위 오라클 (1.70%), 12위 브로드컴 (1.23%), 13위 화웨이 (1.2%), 14위 Mellanox (1.19%), 15위 NXP (1.18%), 16위 ARM (0.98%), 17위 리눅스 재단 (0.78%) 등으로 모두 반도체/통신/IT/시스템 업체임을 알 수 있다.

- [위키백과](https://ko.wikipedia.org/wiki/%EB%A6%AC%EB%88%85%EC%8A%A4)
- [나무위키](https://namu.wiki/w/Linux)

<h2 id="upj_1676435723858">Install</h2>

- Windows Subsystem for Linux
  - [WSL](https://learn.microsoft.com/ko-kr/windows/wsl/install)
- Cloud Service
  - [Oracle](https://www.oracle.com/cloud/)
  - [Google](https://cloud.google.com/?hl=ko)
  - [Amazon](https://aws.amazon.com/ko/)
  - [Microsoft](https://azure.microsoft.com/ko-kr/)
  - [Naver](https://www.ncloud.com/)
- Virtual Machine
  - [Oracle VirtualBox](https://www.virtualbox.org/)
  - [VM Ware](https://www.vmware.com/kr.html)

<h2 id="upj_1676435751835">기본 명령어</h2>

<h3 id="upj_1676435779258">파일 관련 명령어</h3>

파일 보기: ls

```shell
ls -l 	long list
ls -a		all
ls -al	all + long
ls *.txt	확장자 txt만 보기
```

파일 내용 보기

```shell
cat  hello.txt	
cat -e hello.txt	줄의 맨 뒤에 $붙이기
cat -n hello.txt	줄 번호 보여주기
more  hello.txt	페이지 단위로 보기
less  hello.txt	more보다 향상된 기능
```

파일 만들기/지우기

```shell
touch  hello.txt	파일 만들기
rm  hello.txt		파일 삭제
rm -r hello		디렉토리 삭제
rm -f hello.txt	강제 삭제
rm -rf hello		디렉토리 + 강제
```

파일 복사

```shell
cp  hello.txt  dir1
```

파일 이동

```shell
mv  hello.txt  dir2
mv  hello1.txt  hello2.txt	파일 이름 변경
```

파일 숏컷

```shell
ln -s hello.txt hellosym	소프트링크(심볼릭)
ln hello.txt hellolink		하드링크
ls -ali	파일 링크 확인
```

파일 속성 보기

```shell
file hello.txt
```

<h3 id="upj_1676435809402">디렉토리 관련 명령어</h3>

디렉토리 만들기

```shell
mkdir dir1
```

디렉토리 이동

```shell
cd ~	홈 디렉토리
cd ..		부모 디렉토리
cd -		이전 디렉토리
pwd		현재 디렉토리 확인
clear 터미널 지우기
```

<h3 id="upj_1676435840203">시스템 및 기타 유용한 명령어</h3>

시스템 종료

```shell
reboot	재부팅
poweroff	종료
shutdown -P now	바로 종료
shutdown -r now	바로 재시작
shutdown -h +10	10분 후 종료
shutdown -r 21:00	오후9시에 재부팅
```

<h2 id="upj_1676435871210">사용자와 그룹 및 권한 관리</h2>

<h3 id="upj_1676435891619">권한 확인</h3>

계정 권한 확인/권한 대여

```shell
whoami	내가 누구인지 내 계정 확인
id		내가 갖고 있는 권한 확인

cat /etc/passwd	사용자 계정 확인
cat /etc/shadow	사용자 암호
cat /etc/group	사용자 그룹 확인
passwd user1	암호 재설정

sudo	슈퍼유저의 권한을 수행(do)한다
```

<h3 id="upj_1676435970196">사용자 그룹 추가 삭제</h3>

사용자 추가

```shell
     사용자 추가
sudo adduser user2
sudo useradd user3

     사용자를 sudo 권한에 추가

useradd -aG user1 sudo	우분투
useradd -aG user1 wheel	아바존 AMI

     사용자 삭제
sudo deluser user2
sudo deluser user3 --remove-home
```

그룹 추가

```shell
     그룹 생성/삭제
sudo addgroup dev
sudo delgroup dev

     그룹에 사용자 할당
sudo usermod -a -G sudo user1
```

<h3 id="upj_1676436003012">파일시스템 권한</h3>

권한 정보

<table class="post">
<thead>
<tr>
  <th colspan="3">소유자(Owner)</th>
  <th colspan="3">그룹(Group)</th>
  <th colspan="3">그외(Other)</th>
</tr>
</thead>
<tbody>
<tr>
  <td>읽기</td><td>쓰기</td><td>실행</td>
  <td>읽기</td><td>쓰기</td><td>실행</td>
  <td>읽기</td><td>쓰기</td><td>실행</td>
</tr>
<tr>
  <td>r</td><td>w</td><td>x</td>
  <td>r</td><td>w</td><td>x</td>
  <td>r</td><td>w</td><td>x</td>
</tr>
<tr>
  <td>4</td><td>2</td><td>1</td>
  <td>4</td><td>2</td><td>1</td>
  <td>4</td><td>2</td><td>1</td>
</tr>
</tbody>
</table>

권한/소유권 변경

```shell
권한 변경
chmod 777 hello.txt
chmod 700 hello.txt
chmod u+x hello.txt
chmod g-rx hello.txt
chmod o-x hello.txt
chmod +rwx hello.txt

소유권 변경
chown user2 hello.txt		소유자 변경
chown user2:user2 hello.txt	소유자+그룹 변경
chown :user2 hello.txt		그룹 변경
```

<h2 id="upj_1676436035235">Bash 쉘 다루기</h2>

<h3 id="upj_1676436047027">환경변수 PATH</h3>

```shell
echo $PATH
export PATH=$PATH:추가할디렉토리

     프롬프트 스타일 변경
echo $PS1
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n> '
```

<h3 id="upj_1676436075371">기본 문법</h3>

```shell
     모든 쉘 확인
cat /etc/shells

     나의 쉘 확인
echo $0
echo $SHELL

     명령어 히스토리: history
history 10	최근 10개 히스토리 보기
history -c	히스토리 버퍼 삭제
!15		15번째 명령어 실행
!!		바로 이전 명령어 실행

     명령어 실행 위치 파악
which ls
which python

     단축 명령어
alias 단축 명령어 확인
alias ..=”cd ..”
alias …=”cd ../..

     쉘 부팅(시작) 시퀀스
.profile
.bashrc  .bash_history  .bash_logout
```

<h3 id="upj_1676436098387">입출력</h3>

```shell
결과물을 다른 장치로 보냄
ls > file.txt		출력 결과물을 파일로 출력
ls >> file.txt		기존 파일에 누적
aaa 2> file.txt	실패한 결과물을 출력

파이프: 출력값 프로세스간 전달
ls -l | grep hello	출력값 내에서 검색
ls -l | wc -l		줄 개수 확인
ls -l | grep hello | wc -l	다중 파이프 처리
cat hello.txt | more	출력값 페이징 처리
```

<h3 id="upj_1676436112747">bashrc 샘플</h3>

```shell
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n> '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

alias l='ls -lt'
alias la='ls -alt'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../../'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# tomcat & java
CATALINA_HOME="/opt/tomcat/apache-tomcat-8.5.65"
JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export PATH="$PATH:$JAVA_HOME/bin:$CATALINA_HOME\bin"
export CATALINA_HOME
export JAVA_HOME

export NLS_LANG=KOREAN_KOREA.AL32UTF8
```

<h3 id="upj_1676436133675">vimrc 샘플</h3>

```shell
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

set nocompatible
set hlsearch
set nu
set ts=2 sw=2 et
set sts=2
set laststatus=2
set showmatch
set ruler
set fileencodings=utf8,euc-kr
set backspace=indent,eol,start
```

<h2 id="upj_1676436148306">Zsh 쉘 다루기</h2>

<h3 id="upj_1676436158715">Oh My Zsh</h3>

```shell
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

[oh-my-zsh](https://ohmyz.sh/)

<h3 id="upj_1676436178227">PowerLevel10k</h3>

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Font Family: MesloLGS NF

```json
{
  "profiles": {
    "defaults": {
      "fontFace": "MesloLGS NF"
    }
  }
}
```

[Powerlevel10k](https://github.com/romkatv/powerlevel10k)

<h2 id="upj_1676436198467">Vim Editor</h2>

<a href="https://kldp.org/files/vi-vim-cheat-sheet-ko.png" target="_blank">
<img src="/assets/images/vim-shortkey.png" style="width: 75%; height:auto; "/>
</a>

- [Vim Editor Official](https://www.vim.org/)
- [Vim Genius](http://vimgenius.com/)
- [Open Vim](https://openvim.com/)
- [Vim Adventures](https://vim-adventures.com/)

<h2 id="upj_1676436215379">패키지 설치 업데이트 업그레이드</h2>

```shell
     패키지 관리자
apt update -y
apt upgrade -y
apt list –installed
apt install 패키지명
apt remove 설정 유지하고 삭제
apt purge  설정까지 삭제

     저장소(repository) 살펴보기
/etc/apt/* 각종 설정들 확인

     저장소 추가/삭제
sudo add-apt-repository ppa:주소
sudo add-apt-repository --remove ppa:주소

     dpkg 설치 (데비안 패키지 관리자)
dpkg -i 패키지명	설치
dpkg -r 패키지명	설정 유지하고 삭제
dpkg -P 패키지명	설정까지 삭제
dpkg -l 		설치된 패키지 목록 보기
sudo dpkg -i  google-chrome-stable_current_amd64.deb

     운영체제 업그레이드
sudo apt update
sudo apt upgrade
sudo do-release-upgrade
```

<h2 id="upj_1676436232084">데몬 서비스 관리하기</h2>

데몬
: 사용자가 직접적으로 제어하지 않고, 백그라운드에서 돌면서 여러 작업을 하는 프로그램

서비스
: 서버/클라이언트 모델에서 출발하여, 사용자의 요청에 응답하는 프로그램
: 주로 데몬 형태로 구동됨
: (사용예) httpd, ftpd, sshd..

```shell
     서비스 관리하기
systemctl status
systemctl status 데몬명.service
systemctl start 데몬명	(생략가능)
systemctl stop 데몬명
systemctl restart 데몬명
systemctl enable 데몬명 (부팅시 자동시작)
systemctl disable 데몬명 (부팅시 자동시작 삭제)
systemctl deamon-reload 데몬 라이브러리 갱신
systemctl cat 데몬명	(설정 살펴보기)
systemctl edit --full 데몬명 (서비스 명령 수정하기)

     서비스 로그 살펴보기
journalctl		전체로그
journalctl -b		부팅후 로그
journalctl -f 최근 로그 및 이후 로그 트래킹 대기
```