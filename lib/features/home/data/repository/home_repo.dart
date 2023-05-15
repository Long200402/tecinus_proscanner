import 'package:dartz/dartz.dart';

import '../../../../base/network/errors/error.dart';
import '../datasource/model/movie_model.dart';

abstract class HomeRepo {
  Future<Either<BaseError, List<MovieModel>>> getNowShowing();
  Future<Either<BaseError, List<MovieModel>>> getComingSoon();
  Future<Either<BaseError, List<MovieModel>>> getMovieResult(
      {required String expression});
}
