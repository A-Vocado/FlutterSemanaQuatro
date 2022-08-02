import 'package:flutter/material.dart';

class ZTextH1 extends StatelessWidget {
  const ZTextH1({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 26,
        backgroundColor: Color.fromARGB(255, 190, 225, 235),
      ),
    );
  }
}
