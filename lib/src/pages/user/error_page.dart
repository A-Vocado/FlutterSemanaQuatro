import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/buttons/z_elevated_button.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_h1.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Title(
                color: Colors.red,
                child: ZTextH1(text: 'Erro'),
              ),
              ZElevatedButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('/error');
                },
                child: const Text('Voltar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
