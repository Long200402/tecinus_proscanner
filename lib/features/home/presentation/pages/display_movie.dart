import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/datasource/model/movie_model.dart';
import '../widgets/movie_card.dart';

class DisPlayMovie extends StatefulWidget {
  const DisPlayMovie({this.listMovie});
  final List<MovieModel>? listMovie;

  @override
  State<DisPlayMovie> createState() => _DisPlayMovieState();
}

class _DisPlayMovieState extends State<DisPlayMovie> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: GridView.builder(
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (c, i) => GestureDetector(
            // onTap: () => context.router.push(
            //       MovieDetailRoute(id: widget.listMovie?[i].id ?? ''),
            //     ),
            child: MovieCard(movie: widget.listMovie?[i])),
        itemCount: 10,
      ),
    );
  }
}
