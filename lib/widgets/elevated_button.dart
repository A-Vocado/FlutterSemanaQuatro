import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton(
      {Key? key, this.child, required this.onPressed, required this.style})
      : super(key: key);

  final Widget? child;
  final VoidCallback onPressed;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
