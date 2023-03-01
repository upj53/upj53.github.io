---
title: Flutter
layout: upj_design
addr: /pre/flutter/
permalink: /pre/flutter/
---

#### Table Of Contents

- TOC
{:toc}

## Udemy: Flutter & Dart
{: #upj_1677548319798}


### 1.Introduction
{: #upj_1677548386174}

[Flutter 와 React Native 차이점](https://academind.com/tutorials/react-native-vs-flutter-vs-ionic-vs-nativescript-vs-pwa)

[DartPad](https://dartpad.dev/)

### 2.Flutter Basics [Quiz App]
{: #upj_1677644455710}

MaterialApp > home

Scaffold > appBar, body

Different Types of Widget (Container)

- Output & Input (Visible)
  - Button, Text, Card
- Layout & Control (Invisible)
  - Row, Column, ListView

[New Button Style](https://docs.flutter.dev/release/breaking-changes/buttons)

- RaisedButton, ElevatedButton
  - child
  - onPressed: 함수 포인터, 익명 함수
    - funName
    - () -> {}
  
[Dart List](https://dart.dev/guides/language/language-tour#lists),
[List Class](https://api.dart.dev/stable/2.3.1/dart-core/List-class.html)

[Widget 카달로그](https://docs.flutter.dev/development/ui/widgets)

RaisedButton and ElevatedButton

```dart
RaisedButton(
  color: Colors.blue,
  child: ...,
  onPressed: ...
)
ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.blue),
  ),
  child: ...,
  onPressed: ...,
),
```
