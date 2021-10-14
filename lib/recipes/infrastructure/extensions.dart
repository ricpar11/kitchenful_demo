
import 'package:kitchenful/recipes/domain/recipe.dart';
import 'package:kitchenful/recipes/infrastructure/recipe_dto.dart';

extension DTOListToDomainList on List<RecipeDto> {
  List<Recipe> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
