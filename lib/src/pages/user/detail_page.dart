import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_h1.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_h2.dart';
import 'package:navigation/src/design_system/molecules/app_bar/z_app_bar.dart';
import 'package:navigation/src/pages/user/home_page.dart';

import '../option_list.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.option,
  }) : super(key: key);

  final Option option;

  @override
  Widget build(BuildContext context) {
    // Map map =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: ZAppBar(titleText: option.appTitle),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Title(
                color: Colors.green,
                child: ZTextH1(text: option.titleOne),
              ),
              ZTextH2(text: option.loremIps),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ZTextH1(text: option.titleTwo),
              ),
              ZTextH2(text: option.about),
            ],
          ),
        ),
      ),
    );
  }
}
