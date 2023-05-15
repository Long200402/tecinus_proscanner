import 'package:flutter/material.dart';
import '../../data/datasouce/model/movie_review_model.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key, this.movieReview});
  final List<MovieReviewModel>? movieReview;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Review'));
  }
}
