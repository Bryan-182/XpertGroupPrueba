import 'package:rick_and_morty_app/domain/entities/character.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<List<Character>> getCharacterList(GetCharacterListRef ref) async {
  return await CharactersList.getCharacterList();
}
