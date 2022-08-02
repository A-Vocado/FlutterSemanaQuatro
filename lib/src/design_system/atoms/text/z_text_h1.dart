import 'package:flutter/material.dart';

class ZTextH2 extends StatelessWidget {
  const ZTextH2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 64,
      ),
    );
  }
}