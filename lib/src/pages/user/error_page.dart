import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/buttons/z_elevated_button.dart';
import 'package:navigation/src/design_system/atoms/text/z_text_h2.dart';

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
          padding: const EdgeInsets.all(100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: ZTextH2(
                      text: 'ERRO 404',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ZElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('/userPage');
                  },
                  child: const Text('Voltar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
