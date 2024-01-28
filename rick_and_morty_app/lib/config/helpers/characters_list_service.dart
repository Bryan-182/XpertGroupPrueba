import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';

class CharactersList {
  static Future<List<Character>> getCharacterList() async {
    final dio = Dio();

    try {
      final response =
          await dio.get('https://rickandmortyapi.com/api/character');

      return List<Character>.from(
          response.data["results"].map((x) => Character.fromJson(x)));
    } catch (e) {
      return [];
    }
  }
}
