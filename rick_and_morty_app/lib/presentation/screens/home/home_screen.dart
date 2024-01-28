import 'package:flutter/material.dart';

import '../screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Wiki'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      ListTile(
        title: Text('Listado de personajes'),
        subtitle: Text(
            'Acá tienes la lista de todos los personajes de la serie Rick and Morty'),
      ),
      CharacterListWidget()
    ]);
  }
}
