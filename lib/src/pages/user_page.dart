import 'package:flutter/material.dart';
import 'package:navigation/src/design_system/molecules/app_bar/z_app_bar.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class Option {
  final String title;
  final String subtitle;
  final Widget? icon;

  Option({required this.title, required this.subtitle, this.icon});
}

class _UserPageState extends State<UserPage> {
  List<Option> options = [
    Option(
      title: 'Opção 1',
      subtitle: 'Clique aqui para mais detalhes desta opção',
      icon: const Icon(Icons.flutter_dash),
    ),
    Option(
      title: 'Opção 2',
      subtitle: 'Clique aqui para mais detalhes desta opção',
      icon: const Icon(Icons.beach_access),
    ),
    Option(
      title: 'Opção 3',
      subtitle: 'Clique aqui para mais detalhes desta opção',
      icon: const Icon(Icons.flood),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(titleText: 'Seja bem vindo!'),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];

          return Card(
            child: ListTile(
              title: Text(option.title),
              subtitle: Text(option.subtitle),
              leading: option.icon,
            ),
          );
        },
      ),
    );
  }
}
