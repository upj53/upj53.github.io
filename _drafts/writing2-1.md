---
title: Drafts
layout: upj_design
permalink: /drafts/writing2-1/
---

## Basic 1 - Layouts

[App 1-AboutMe App](https://github.com/udacity/andfun-kotlin-about-me)

```kotlin
// Hide the keyboard.
val imm = getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
imm.hideSoftInputFromWindow(view.windowToken, 0)
```

dataBinding

```groovy
dataBinding {
  enabled = true
}
buildFeatures {
  viewBinding = true
  dataBinding = true
}
```
wrap root tag with layout tag

```xml
<?xml version="1.0" encoding="utf-8"?>
<layout 
  xmlns:android="http://schemas.android.com/apk/res/android" 
  xmlns:app="http://schemas.android.com/apk/res-auto">
  <LinearLayout>...</LinearLayout>
</layout>
```
```kotlin
private lateinit var binding: ActivityMainBinding
binding = DataBindingUtil.setContentView(this, R.layout.activity_main)
inding.apply {
  nicknameText.text = nicknameEdit.text
  invalidateAll()
  nicknameEdit.visibility = View.GONE
  nicknameText.visibility = View.VISIBLE
}
```

[App 2-ColorMyViews App](https://github.com/udacity/andfun-kotlin-color-my-views)

Ratios

```xml
<View
  android:layout_width="10dp"
  android:layout_height="0dp"
  app:layout_constraintBottom_toBottomOf="parent"
  app:layout_constraintDimensionRatio="h,1:10"
  app:layout_constraintEnd_toEndOf="parent"
  app:layout_constraintHorizontal_bias="0.316"
  app:layout_constraintStart_toStartOf="parent"
  app:layout_constraintTop_toTopOf="parent"
  app:layout_constraintVertical_bias="0.148" />
```

- Spread chain
- Packed chain
- Spread inside chain
- Packed chain with bias
- Weighted chain

```kotlin
private fun setListeners() {
  binding.apply {
    val clickableViews: List<View> = listOf(
      boxOneText, boxTwoText, boxThreeText
    )

    for (item in clickableViews) {
      item.setOnClickListener { makeColored(it) }
    }
  }
}
```

## Basic 2 - App Navigation

[App 3-Trivia App](https://github.com/udacity/andfun-kotlin-android-trivia)

navigation dependency 

```groovy
implementation "androidx.navigation:navigation-fragment-ktx:2.5.3"
implementation "androidx.navigation:navigation-ui-ktx:2.5.3"
```

Principle of Navigation

1. There's always a Starting Place.
2. You can always Go Back.
3. Up goes Back (Mostly)

navigation graph

```xml
<fragment
  android:id="@+id/gameFragment"
  android:name="kr.sungil.androidkotlin.GameFragment"
  android:label="fragment_game"
  tools:layout="@layout/fragment_game" >
  <action
    android:id="@+id/action_gameFragment_to_gameWonFragment"
    app:destination="@id/gameWonFragment"
    app:popUpTo="@id/gameFragment"
    app:popUpToInclusive="true" />
  <action
    android:id="@+id/action_gameFragment_to_gameOverFragment"
    app:destination="@id/gameOverFragment"
    app:popUpTo="@id/gameFragment"
    app:popUpToInclusive="true" />
</fragment>
```

```kotlin
view.findNavController().navigate(R.id.action_gameFragment_to_gameWonFragment)
```

fragment view binding

```kotlin
class AboutFragment : Fragment(R.layout.fragment_about) {
  private var binding: FragmentAboutBinding? = null
  override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
    super.onViewCreated(view, savedInstanceState)
    val _binding = FragmentAboutBinding.bind(view)
    binding = _binding
  }
}
```

add menu

```kotlin
private fun setupMenu() {
  (requireActivity() as MenuHost).addMenuProvider(object : MenuProvider {
    override fun onCreateMenu(menu: Menu, menuInflater: MenuInflater) {
      menuInflater.inflate(R.menu.overflow_menu, menu)
    }

    override fun onMenuItemSelected(menuItem: MenuItem): Boolean {
      return NavigationUI.onNavDestinationSelected(menuItem, view!!.findNavController())
    }
  }, viewLifecycleOwner, Lifecycle.State.RESUMED)
}
```

SafeArgs

```groovy
// Project
buildscript {
  dependencies {
    classpath "androidx.navigation:navigation-safe-args-gradle-plugin:2.5.3"
  }
}
plugins {
  id 'com.android.application' version '7.3.1' apply false
  id 'com.android.library' version '7.3.1' apply false
  id 'org.jetbrains.kotlin.android' version '1.8.0' apply false
}
```

```groovy
// App
plugins {
  id 'com.android.application'
  id 'org.jetbrains.kotlin.android'
  id 'kotlin-kapt'
  id 'androidx.navigation.safeargs'
}
```

```xml
<!--add arguments-->
<fragment
  android:id="@+id/gameWonFragment"
  android:name="kr.sungil.androidkotlin.GameWonFragment"
  android:label="fragment_game_won"
  tools:layout="@layout/fragment_game_won"
  >
  <action
    android:id="@+id/action_gameWonFragment_to_gameFragment"
    app:destination="@id/gameFragment"
    />
  <argument
    android:name="numQuestions"
    app:argType="integer"
    />
  <argument
    android:name="numCorrect"
    app:argType="integer"
    />
</fragment>
```

```kotlin
// send args
view.findNavController().navigate(GameFragmentDirections.actionGameFragmentToGameWonFragment())
view.findNavController()
  .navigate(GameFragmentDirections.actionGameFragmentToGameWonFragment(numQuestions, questionIndex))
// get args
var args = GameWonFragmentArgs.fromBundle(requireArguments())
```

```xml
<!--getString with parameters-->
<string name="share_success_text">I mastered #UdacityAndroidTrivia with %1$d/%2$d correct questions!</string>
```

```kotlin
getString(R.string.share_success_text, args.numCorrect, args.numQuestions)
```

app drawer on up button

```kotlin
class MainActivity : AppCompatActivity() {
  private lateinit var drawerLayout: DrawerLayout
  private lateinit var appBarConfiguration: AppBarConfiguration

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    val binding = ActivityMainBinding.inflate(layoutInflater)
    setContentView(binding.root)

    drawerLayout = binding.drawerLayout
    val navController = this.findNavController(R.id.myNavHostFragment)
    NavigationUI.setupActionBarWithNavController(this, navController, drawerLayout)
    appBarConfiguration = AppBarConfiguration(navController.graph, drawerLayout)
    navController.addOnDestinationChangedListener { nc: NavController, nd: NavDestination, bundle: Bundle? ->
      if(nd.id == nc.graph.startDestinationId) {
        drawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_UNLOCKED)
      } else {
        drawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_LOCKED_CLOSED)
      }
    }
    NavigationUI.setupWithNavController(binding.navView, navController)
  }

  override fun onSupportNavigateUp(): Boolean {
    val navController = this.findNavController(R.id.myNavHostFragment)
    return NavigationUI.navigateUp(navController, appBarConfiguration)
  }
}
```

## Basic 3 - Activity and Fragment Lifecycle

[App 4-DessertPusher App](https://github.com/udacity/andfun-kotlin-dessert-pusher)

Timber Log Tree

```groovy
implementation 'com.jakewharton.timber:timber:5.0.1'
```

```kotlin
class PusherApplication : Application() {
  override fun onCreate() {
    super.onCreate()
    Timber.plant(Timber.DebugTree())
  }
}
```

```kotlin
Timber.i("onStart Called")
```

[Activity Lifecycle Worksheet](https://video.udacity-data.com/topher/2018/November/5be0f083_activity-lifecycle-worksheet/activity-lifecycle-worksheet.pdf),
[garbage collection](https://en.wikipedia.org/wiki/Garbage_collection_(computer_science)),
[Activity Lifecycle Summary](https://video.udacity-data.com/topher/2018/November/5be286d0_l4-1803sc-a-share-dialog-and-onpause-onresume-border/l4-1803sc-a-share-dialog-and-onpause-onresume-border.png)

Lifecycle cheet sheet: 
[Single activities](https://medium.com/androiddevelopers/the-android-lifecycle-cheat-sheet-part-i-single-activities-e49fd3d202ab),
[Multiple activities](https://medium.com/androiddevelopers/the-android-lifecycle-cheat-sheet-part-ii-multiple-activities-a411fd139f24),
[Fragments](https://medium.com/androiddevelopers/the-android-lifecycle-cheat-sheet-part-iii-fragments-afc87d4f37fd)

- Resumed(onResume, onPause): Activity is visible, and Activity has focus
- Started(onStart, onStop): Activity is visible

[Handling Lifecycle](https://developer.android.com/topic/libraries/architecture/lifecycle),
[Lifecycle Observer in Android blog](https://medium.com/@aritrodam773/lifecycle-observer-in-android-6e9d16ed49bc)