import 'package:dartz/dartz.dart';
import 'package:kitchenful/core/domain/failures.dart';
import 'package:kitchenful/recipes/domain/recipe.dart';
import 'package:kitchenful/recipes/infrastructure/recipes_remote_service.dart';

import 'extensions.dart';

class RecipesRepository {
  final RecipesRemoteDataService _recipesRemoteDataService;

  RecipesRepository(this._recipesRemoteDataService);

  Future<Either<NetworkFailure, List<Recipe>>> getRecipes() async {
    try {
      final remotePageItems = await _recipesRemoteDataService.getRecipes();

      return remotePageItems.maybeMap(
        success: (success) => right(success.data.toDomain()),
        noConnection: (_) => left(const NetworkFailure.noConnection()),
        orElse: () => left(const NetworkFailure.unexpected()),
      );
    } catch (_) {
      return left(const NetworkFailure.unexpected());
    }
  }
}
