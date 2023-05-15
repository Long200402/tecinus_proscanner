import 'package:flutter/material.dart';
import '../../data/datasouce/model/movie_detail_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.movieDetail});
  final MovieDetailModel? movieDetail;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('${movieDetail?.plot}'));
  }
}
