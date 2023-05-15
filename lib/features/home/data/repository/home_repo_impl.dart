import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_core/base/network/errors/extension.dart';
import 'package:injectable/injectable.dart';
import '../../../../base/network/errors/error.dart';
import '../../../../common/local_data/app_token.dart';

import '../datasource/model/movie_model.dart';
import '../datasource/service/home_service.dart';
import 'home_repo.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._service);
  final HomeService _service;
  @override
  Future<Either<BaseError, List<MovieModel>>> getComingSoon() async {
    try {
      final res = await _service.getComingSoon(apiKey: AppToken.apiKey1);
      return right(res.data!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MovieModel>>> getNowShowing() async {
    try {
      final res = await _service.getNowShowing(apiKey: AppToken.apiKey1);
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MovieModel>>> getMovieResult(
      {required String expression}) async {
    try {
      final res = await _service.getMovieResult(
          expression: expression, apiKey: AppToken.apiKey1);
      return right(res.results!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }
}
