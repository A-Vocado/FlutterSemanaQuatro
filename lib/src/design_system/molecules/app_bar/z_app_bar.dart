import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_app_title.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_titulo.dart';

class ZAppBar extends PreferredSize {
  ZAppBar({Key? key, required this.titleText, this.actions})
      : super(key: key, preferredSize: const Size(500, 60), child: Container());

  final String titleText;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ZTextApp(text: titleText),
      actions: actions,
      backgroundColor: const Color.fromARGB(255, 48, 0, 140),
    );
  }
}
