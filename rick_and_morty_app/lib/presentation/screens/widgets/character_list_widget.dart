import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/presentation/providers/future_providers.dart';

import '../screens.dart';

class CharacterListWidget extends ConsumerWidget {
  const CharacterListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterList = ref.watch(getCharacterListProvider);

    if (characterList.isLoading) {
      return const Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (characterList.hasError) {
      return const Center(
          child: Center(child: Text("Error al consultar servicio")));
    }

    final characterResults = characterList.value!;

    return Expanded(
      child: ListView.builder(
        itemCount: characterResults.length,
        itemBuilder: (context, index) {
          final character = characterResults[index];
          return CharacterCardWidget(
            character: character,
          );
        },
      ),
    );
  }
}
