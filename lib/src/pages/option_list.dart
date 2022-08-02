import 'package:flutter/material.dart';

class Option {
  final String appTitle;
  final String titleOne;
  final String titleTwo;
  final String subtitle;
  final String loremIps;
  final String about;
  final Widget? icon;

  Option({
    required this.appTitle,
    required this.subtitle,
    required this.titleOne,
    required this.titleTwo,
    required this.loremIps,
    required this.about,
    this.icon,
  });
}

List<Option> options = [
  Option(
    appTitle: 'Belo Horizonte',
    titleOne: 'Sobre Belo Horizonte',
    titleTwo: 'Pontos Turísticos',
    loremIps:
        'Belo Horizonte é um município brasileiro e a capital do estado de Minas Gerais. Sua população estimada pelo IBGE para 1.º de julho de 2021 era de 2 530 701 habitantes,[4] sendo o sexto município mais populoso do país, o terceiro da Região Sudeste e primeiro de seu estado.[8] Com uma área de aproximadamente 331 km², possui uma geografia diversificada, com morros e baixadas.',
    subtitle: 'Clique aqui para mais detalhes desta opção',
    about: 'Praça da Liberdade, Museu das Minas e do Metal, Mercado Central',
    icon: const Icon(Icons.flutter_dash),
  ),
  Option(
    appTitle: 'São Paulo',
    titleOne: 'Sobre São Paulo',
    titleTwo: 'Pontos Turísticos',
    loremIps: 'Lorem Ipsum',
    subtitle: 'Clique aqui para mais detalhes desta opção',
    about: 'Lorem Ipsum',
    icon: const Icon(Icons.beach_access),
  ),
  Option(
    appTitle: 'Santarém',
    titleOne: 'Sobre Santarém',
    titleTwo: 'Pontos Turísticos',
    loremIps: 'Lorem Ipsum',
    subtitle: 'Clique aqui para mais detalhes desta opção',
    about: 'Lorem Ipsum',
    icon: const Icon(Icons.flood),
  ),
];
