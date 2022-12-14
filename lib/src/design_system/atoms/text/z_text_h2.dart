import 'package:flutter/material.dart';

class ZTextH2 extends StatelessWidget {
  const ZTextH2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.justify,
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
