import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

const kBaseUrl =
    "https://django-cloudrun-r332fcqfqa-uc.a.run.app/api/kitchenful/";

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: kBaseUrl),
  ),
);
