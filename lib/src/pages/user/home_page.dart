import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_titulo.dart';
import 'package:navigation/src/design_system/molecules/app_bar/z_app_bar.dart';
import 'package:navigation/src/pages/option_list.dart';

import 'detail_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(titleText: 'Seja bem vindo!'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (context, index) {
            final option = options[index];

            return Card(
              child: ListTile(
                title: ZTextTitulo(text: option.titleOne),
                subtitle: Text(option.subtitle),
                leading: option.icon,
                onTap: () {
                  if (option == [2]) {
                    Navigator.of(context).pushReplacementNamed('/error');
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPage(option: option),
                      ),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
