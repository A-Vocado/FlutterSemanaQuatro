import 'package:flutter/material.dart';

class ZElevatedButton extends StatelessWidget {
  const ZElevatedButton({
    Key? key,
    this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(250, 30),
          primary: const Color.fromARGB(255, 48, 0, 140),
        ),
        child: child,
      ),
    );
  }
}
