# hello_flutter_anim

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


**<--AnimationController animationController-->**

```dart
InkWell(
              onTap: () {
                if (animationController.isCompleted) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
              },)

```dart
AnimationController animationController;
  Animation<double> animation;
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0.0, end: pi).animate(animationController);
    animationController.forward();
  }

              `vsync=with SingleTickerProviderStateMixin`

# FlutterSimpleAnimation
