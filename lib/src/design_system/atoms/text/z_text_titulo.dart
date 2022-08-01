import 'package:flutter/material.dart';

class ZTextTitulo extends StatelessWidget {
  const ZTextTitulo({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
      ),
    );
  }
}
