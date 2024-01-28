import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';
import '../screens.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;
  const CharacterDetail({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalles del Personaje'),
        ),
        body: _body(character));
  }
}

Widget _body(Character character) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CharacterCardWidget(character: character),
        const SizedBox(height: 20),
        DetailTitleWidget(title: "Estado", value: character.status),
        DetailTitleWidget(title: "Especie", value: character.species),
        DetailTitleWidget(title: "Tipo", value: character.type),
        DetailTitleWidget(title: "Género", value: character.gender),
        DetailTitleWidget(title: "Origen", value: character.origin.name),
        DetailTitleWidget(title: "Ubicación", value: character.location.name),
      ],
    ),
  );
}
