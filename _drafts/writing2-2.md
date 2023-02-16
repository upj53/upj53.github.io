---
title: Drafts
layout: upj_design
permalink: /drafts/writing2-2/
---

## Basic 4-1 App Architecture (UI Layer)
{: #upj_1676529112182}

[App 5-GuessIt App](https://github.com/udacity/andfun-kotlin-guess-it)
([Codes](https://github1s.com/udacity/andfun-kotlin-guess-it))

[Architecture Sample App](https://github.com/android/architecture-samples),
[MVP 패턴](https://medium.com/upday-devs/android-architecture-patterns-part-2-model-view-presenter-8a6faaae14a5),
[앱 아키텍처](https://developer.android.com/topic/architecture?hl=ko),
[ViewModel 개요](https://developer.android.com/topic/libraries/architecture/viewmodel?hl=ko),
[ViewModel Doc](https://developer.android.com/reference/kotlin/androidx/lifecycle/ViewModel),
[ViewModel Simple Example App](https://medium.com/androiddevelopers/viewmodels-a-simple-example-ed5ac416317e),
[UI 상태 저장](https://developer.android.com/topic/libraries/architecture/saving-states?hl=ko),
[ViewModel Posts](https://medium.com/androiddevelopers/viewmodels-persistence-onsaveinstancestate-restoring-ui-state-and-loaders-fc7cc4a6c090),
[LiveData 개요](https://developer.android.com/topic/libraries/architecture/livedata?hl=ko),
[LiveData Doc](https://developer.android.com/reference/kotlin/androidx/lifecycle/LiveData),
[LiveData Lifecycle](https://developer.android.com/topic/libraries/architecture/lifecycle?hl=ko),
[Backing properties](https://kotlinlang.org/docs/properties.html#backing-properties),
[Kotlin 스타일 가이드](https://developer.android.com/kotlin/style-guide?hl=ko#backing-properties),
[캡슐화](https://ko.wikipedia.org/wiki/%EC%BA%A1%EC%8A%90%ED%99%94),
[LiveData Observer](https://developer.android.com/topic/libraries/architecture/livedata?hl=ko#observe_livedata_objects),
[CountDownTimer Class Docs](https://developer.android.com/reference/kotlin/android/os/CountDownTimer),
[ViewModelFactory](https://developer.android.com/reference/kotlin/androidx/lifecycle/ViewModelProvider.Factory.html),
[Factory 디자인패턴](https://en.wikipedia.org/wiki/Factory_(object-oriented_programming)),
[Factory 예제](https://cjw-awdsd.tistory.com/54),
[레이아웃 및 결합 표현식](https://developer.android.com/topic/libraries/data-binding/expressions?hl=ko),
[ViewModel - DataBinding 연결](https://developer.android.com/topic/libraries/data-binding/architecture?hl=ko#viewmodel),
[LiveData 자동업데이트](https://developer.android.com/topic/libraries/data-binding/architecture?hl=ko#livedata),
[문자열 Formatting](https://developer.android.com/guide/topics/resources/string-resource?hl=ko#formatting-strings),
[Layout Binding 수식](https://developer.android.com/topic/libraries/data-binding/expressions?hl=ko#resources),

```xml
 <Button
     android:id="@+id/correct_button"
     android:layout_width="wrap_content"
     android:layout_height="wrap_content"
     android:layout_marginEnd="16dp"
     android:onClick="@{() -> gameViewModel.onCorrect()}"
     android:text="@string/got_it"
     android:theme="@style/GoButton"
     app:layout_constraintBottom_toBottomOf="parent"
     app:layout_constraintEnd_toEndOf="parent"
     app:layout_constraintHorizontal_bias="0.5"
     app:layout_constraintStart_toEndOf="@+id/skip_button"
     app:layout_constraintTop_toTopOf="@+id/guideline" />
```

```xml
<!--string.xml-->
<string name="quote_format">\"%s\"</string>
<string name="score_format">Current Score: %d</string>

<!--UI xml file-->
 <TextView
     android:id="@+id/word_text"
     android:layout_width="wrap_content"
     android:layout_height="wrap_content"
     android:animateLayoutChanges="true"
     android:fontFamily="sans-serif"
     android:text="@{@string/quote_format(gameViewModel.word)}"
     android:textAppearance="@style/TextAppearance.AppCompat.Headline"
     android:textColor="@color/black_text_color"
     android:textSize="34sp"
     android:textStyle="normal"
     app:layout_constraintBottom_toTopOf="@+id/score_text"
     app:layout_constraintEnd_toEndOf="parent"
     app:layout_constraintHorizontal_bias="0.5"
     app:layout_constraintStart_toStartOf="parent"
     app:layout_constraintTop_toBottomOf="@+id/word_is_text"
     app:layout_constraintVertical_chainStyle="packed"
     tools:text="&quot;Tuna&quot;" />
```

```kotlin
val currentTimeString = Transformations.map(currentTime) { time ->
    DateUtils.formatElapsedTime(time)
}
```

```kotlin
binding.setLifecycleOwner(this)
```

[Android Permission](https://developer.android.com/guide/topics/permissions/overview?hl=ko),


## Basic 4-2 App Architecture (Persistence)
{: #upj_1676529117694}

## Basic 5 RecyclerView
{: #upj_1676529122062}

## Basic 6 Connect to the Internet
{: #upj_1676529125902}

## Basic 7 Behind the Scenes
{: #upj_1676529133902}

## Basic 8 Designing for Everyone
{: #upj_1676529137671}

