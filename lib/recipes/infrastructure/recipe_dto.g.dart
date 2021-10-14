// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDto _$$_RecipeDtoFromJson(Map<String, dynamic> json) => _$_RecipeDto(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['img_url'] as String,
      cookTime: json['cook_time_min'] as int,
      prepTime: json['prep_time_min'] as int,
    );

Map<String, dynamic> _$$_RecipeDtoToJson(_$_RecipeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imageUrl,
      'cook_time_min': instance.cookTime,
      'prep_time_min': instance.prepTime,
    };
