import 'package:kitchenful/core/shared/providers.dart';
import 'package:kitchenful/recipes/application/recipes_notifier.dart';
import 'package:kitchenful/recipes/infrastructure/recipes_remote_service.dart';
import 'package:kitchenful/recipes/infrastructure/recipes_repository.dart';
import 'package:riverpod/riverpod.dart';

final recipesRemoteServiceProvider = Provider(
  (ref) => RecipesRemoteDataService(
    ref.watch(dioProvider),
  ),
);

final recipesRepositoryProvider = Provider(
  (ref) => RecipesRepository(
    ref.watch(recipesRemoteServiceProvider),
  ),
);

final recipesNotifierProvider =
    StateNotifierProvider<RecipesNotifier, RecipesState>(
  (ref) => RecipesNotifier(ref.watch(recipesRepositoryProvider)),
);
