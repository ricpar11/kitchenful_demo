import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitchenful/core/domain/failures.dart';
import 'package:kitchenful/recipes/domain/recipe.dart';
import 'package:kitchenful/recipes/infrastructure/recipes_repository.dart';
import 'package:riverpod/riverpod.dart';

part 'recipes_notifier.freezed.dart';

@freezed
class RecipesState with _$RecipesState {
  const RecipesState._();

  const factory RecipesState.loading() = _Loading;
  const factory RecipesState.success({required List<Recipe> recipes}) =
      _Success;
  const factory RecipesState.failure({required NetworkFailure networkFailure}) =
      _Failure;
}

class RecipesNotifier extends StateNotifier<RecipesState> {
  final RecipesRepository _recipesRepository;

  RecipesNotifier(this._recipesRepository)
      : super(const RecipesState.loading()) {
    getRecipes();
  }

  Future<void> getRecipes() async {
    state = const RecipesState.loading();

    final failureOrRecipes = await _recipesRepository.getRecipes();
    state = failureOrRecipes.fold(
      (l) => l.map(
          noConnection: (noConnection) =>
              RecipesState.failure(networkFailure: noConnection),
          unexpected: (unexpected) =>
              RecipesState.failure(networkFailure: unexpected)),
      (r) => RecipesState.success(recipes: r),
    );
  }
}
