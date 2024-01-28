import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/domain/entities/character.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/screens/screens.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/character',
      builder: (context, state) =>
          CharacterDetail(character: state.extra as Character),
    ),
  ]);
}
