import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitchenful/recipes/domain/recipe.dart';

part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
class RecipeDto with _$RecipeDto {
  const RecipeDto._();

  const factory RecipeDto({
    required int id,
    required String name,
    @JsonKey(name: 'img_url') required String imageUrl,
    @JsonKey(name: 'cook_time_min') required int cookTime,
    @JsonKey(name: 'prep_time_min') required int prepTime,
  }) = _RecipeDto;

  factory RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$RecipeDtoFromJson(json);

  Recipe toDomain() => Recipe(
        id: id,
        name: name,
        imageUrl: imageUrl,
        cookTime: cookTime,
        prepTime: prepTime,
      );
}
