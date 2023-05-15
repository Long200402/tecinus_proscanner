import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_core/base/network/errors/extension.dart';
import 'package:injectable/injectable.dart';
import '../../../../base/network/errors/error.dart';
import '../../../../common/local_data/app_token.dart';

import '../datasouce/model/movie_auth_model.dart';
import '../datasouce/model/movie_detail_model.dart';
import '../datasouce/model/movie_review_model.dart';
import '../datasouce/service/detail_service.dart';
import 'movie_detail_repo.dart';

@Injectable(as: MovieDetailRepo)
class MovieDetailRepoImpl implements MovieDetailRepo {
  MovieDetailRepoImpl(this._service);
  final DetailService _service;
  @override
  Future<Either<BaseError, List<MovieAuthModel>>> getMovieAuth(
      {required String id}) async {
    try {
      final res = await _service.getMovieAuth(id: id, apiKey: AppToken.apiKey1);
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, MovieDetailModel>> getMovieDetail(
      {required String id}) async {
    try {
      final res =
          await _service.getMovieDetail(id: id, apiKey: AppToken.apiKey1);
      return right(res);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MovieReviewModel>>> getMovieReview(
      {required String id}) async {
    try {
      final res =
          await _service.getMovieReview(id: id, apiKey: AppToken.apiKey1);
      return right(res.items!);
    } on DioError catch (e) {
      return left(e.baseError);
    }
  }
}
