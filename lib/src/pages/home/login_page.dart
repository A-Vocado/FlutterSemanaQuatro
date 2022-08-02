import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/atoms/buttons/z_elevated_button.dart';
import 'package:navigation/src/design_system/atoms/text_field/z_text_field.dart';
import 'package:navigation/src/validator/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 220),
          child: Column(
            children: [
              ZFormField(
                controller: emailController,
                hintText: 'Insira seu e-mail para fazer login',
                labelText: 'E-mail',
                icon: const Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validate: Validator.validateField,
                onChanged: (email) {
                  debugPrint(email);
                },
              ),
              ZFormField(
                controller: passwordController,
                hintText: 'Senha',
                labelText: 'Senha',
                icon: const Icon(Icons.email),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validate: Validator.validateField,
                onChanged: (password) {
                  debugPrint(password);
                },
              ),
              ZElevatedButton(
                onPressed: () {
                  final isvalidForm = formKey.currentState!.validate();
                  if (isvalidForm) {
                    Navigator.of(context).pushReplacementNamed('/userPage');
                  }

                  emailController.clear();
                  passwordController.clear();
                },
                child: const Text('Acessar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
