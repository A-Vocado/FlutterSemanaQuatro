import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/buttons/z_elevated_button.dart';
import 'package:navigation/src/design_system/atoms/text_field/z_text_field.dart';
import 'package:navigation/src/pages/user_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ZFormField(
            controller: emailController,
            hintText: 'Insira seu e-mail para fazer login',
            labelText: 'E-mail',
            icon: const Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (email) {
              debugPrint(email);
            },
          ),
          ZFormField(
            controller: emailController,
            hintText: 'Senha',
            labelText: 'Senha',
            icon: const Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onChanged: (password) {
              debugPrint(password);
            },
          ),
          ZElevatedButton(
            onPressed: () {
              emailController.clear();
              passwordController.clear();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const UserPage();
                  },
                ),
              );
            },
            child: const Text('Acessar'),
          )
        ],
      ),
    );
  }
}
