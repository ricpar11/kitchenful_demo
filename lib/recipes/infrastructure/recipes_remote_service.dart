import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kitchenful/core/infrastructure/remote_response.dart';
import 'package:kitchenful/recipes/infrastructure/recipe_dto.dart';

class RecipesRemoteDataService {
  final Dio _dio;

  RecipesRemoteDataService(this._dio);

  Future<RemoteResponse<List<RecipeDto>>> getRecipes() async {
    try {
      final response = await _dio.get('recipes/tag/23/');

      if (response.statusCode == 200) {
        final convertedData = (response.data as List<dynamic>)
            .map((recipe) => RecipeDto.fromJson(recipe as Map<String, dynamic>))
            .toList();
        return RemoteResponse.success(convertedData);
      } else {
        // for simplicity
        throw const RemoteResponse.noConnection();
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }
      rethrow;
    }
  }
}

extension DioErrorX on DioError {
  bool get isNoConnectionError {
    return type == DioErrorType.other && error is SocketException;
  }
}
