// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

/// @nodoc
class _$RecipeDtoTearOff {
  const _$RecipeDtoTearOff();

  _RecipeDto call(
      {required int id,
      required String name,
      @JsonKey(name: 'img_url') required String imageUrl,
      @JsonKey(name: 'cook_time_min') required int cookTime,
      @JsonKey(name: 'prep_time_min') required int prepTime}) {
    return _RecipeDto(
      id: id,
      name: name,
      imageUrl: imageUrl,
      cookTime: cookTime,
      prepTime: prepTime,
    );
  }

  RecipeDto fromJson(Map<String, Object?> json) {
    return RecipeDto.fromJson(json);
  }
}

/// @nodoc
const $RecipeDto = _$RecipeDtoTearOff();

/// @nodoc
mixin _$RecipeDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'img_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cook_time_min')
  int get cookTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'prep_time_min')
  int get prepTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDtoCopyWith<RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'img_url') String imageUrl,
      @JsonKey(name: 'cook_time_min') int cookTime,
      @JsonKey(name: 'prep_time_min') int prepTime});
}

/// @nodoc
class _$RecipeDtoCopyWithImpl<$Res> implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

  final RecipeDto _value;
  // ignore: unused_field
  final $Res Function(RecipeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cookTime = freezed,
    Object? prepTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: cookTime == freezed
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      prepTime: prepTime == freezed
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RecipeDtoCopyWith<$Res> implements $RecipeDtoCopyWith<$Res> {
  factory _$RecipeDtoCopyWith(
          _RecipeDto value, $Res Function(_RecipeDto) then) =
      __$RecipeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'img_url') String imageUrl,
      @JsonKey(name: 'cook_time_min') int cookTime,
      @JsonKey(name: 'prep_time_min') int prepTime});
}

/// @nodoc
class __$RecipeDtoCopyWithImpl<$Res> extends _$RecipeDtoCopyWithImpl<$Res>
    implements _$RecipeDtoCopyWith<$Res> {
  __$RecipeDtoCopyWithImpl(_RecipeDto _value, $Res Function(_RecipeDto) _then)
      : super(_value, (v) => _then(v as _RecipeDto));

  @override
  _RecipeDto get _value => super._value as _RecipeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cookTime = freezed,
    Object? prepTime = freezed,
  }) {
    return _then(_RecipeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: cookTime == freezed
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      prepTime: prepTime == freezed
          ? _value.prepTime
          : prepTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDto extends _RecipeDto {
  const _$_RecipeDto(
      {required this.id,
      required this.name,
      @JsonKey(name: 'img_url') required this.imageUrl,
      @JsonKey(name: 'cook_time_min') required this.cookTime,
      @JsonKey(name: 'prep_time_min') required this.prepTime})
      : super._();

  factory _$_RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'img_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'cook_time_min')
  final int cookTime;
  @override
  @JsonKey(name: 'prep_time_min')
  final int prepTime;

  @override
  String toString() {
    return 'RecipeDto(id: $id, name: $name, imageUrl: $imageUrl, cookTime: $cookTime, prepTime: $prepTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.cookTime, cookTime) ||
                other.cookTime == cookTime) &&
            (identical(other.prepTime, prepTime) ||
                other.prepTime == prepTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageUrl, cookTime, prepTime);

  @JsonKey(ignore: true)
  @override
  _$RecipeDtoCopyWith<_RecipeDto> get copyWith =>
      __$RecipeDtoCopyWithImpl<_RecipeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDtoToJson(this);
  }
}

abstract class _RecipeDto extends RecipeDto {
  const factory _RecipeDto(
      {required int id,
      required String name,
      @JsonKey(name: 'img_url') required String imageUrl,
      @JsonKey(name: 'cook_time_min') required int cookTime,
      @JsonKey(name: 'prep_time_min') required int prepTime}) = _$_RecipeDto;
  const _RecipeDto._() : super._();

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$_RecipeDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'img_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'cook_time_min')
  int get cookTime;
  @override
  @JsonKey(name: 'prep_time_min')
  int get prepTime;
  @override
  @JsonKey(ignore: true)
  _$RecipeDtoCopyWith<_RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
