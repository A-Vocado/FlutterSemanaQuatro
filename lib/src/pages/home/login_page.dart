import 'package:flutter/material.dart';
import 'package:navigation/widgets/elevated_button.dart';
import '../../../widgets/my_form_field.dart';

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
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          MyFormField(
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
          MyFormField(
            controller: passwordController,
            hintText: 'Senha',
            labelText: 'Senha',
            icon: const Icon(Icons.password),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            onChanged: (password) {
              debugPrint(password);
            },
          ),
          MyElevatedButton(
            onPressed: () {
              emailController.clear();
              passwordController.clear();
            },
            style: ElevatedButton.styleFrom(minimumSize: const Size(250, 30)),
            child: const Text('Fazer Login'),
          )
        ],
      ),
    );
  }
}
