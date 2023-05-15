import 'package:copy_with_extension/copy_with_extension.dart';

import 'movie_auth_model.dart';
import 'movie_detail_model.dart';
import 'movie_review_model.dart';
part 'movie_detail_entity.g.dart';

@CopyWith()
class MovieDetailEntity {
  final String? id;
  final MovieAuthModel? movieAuth;
  final MovieDetailModel? movieDetail;
  final List<MovieReviewModel>? movieReview;

  MovieDetailEntity({
    this.id,
    this.movieAuth,
    this.movieDetail,
    this.movieReview,
  });
}
