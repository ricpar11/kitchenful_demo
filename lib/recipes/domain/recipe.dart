import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const Recipe._();

  const factory Recipe({
    required int id,
    required String name,
    required String imageUrl,
    required int cookTime,
    required int prepTime,
  }) = _Recipe;
}
