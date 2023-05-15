import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/features/movie_detail/data/repository/movie_detail_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../base/bloc/index.dart';
import '../../data/datasouce/model/movie_detail_entity.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';
part 'movie_detail_bloc.g.dart';
part 'movie_detail_bloc.freezed.dart';

@injectable
class MovieDetailBloc extends BaseBloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc(this._repo) : super(MovieDetailState.init()) {
    on<MovieDetailEvent>(
        (MovieDetailEvent event, Emitter<MovieDetailState> emit) async {
      await event.when(init: (String id) => _onInit(id, emit));
    });
  }

  final MovieDetailRepo _repo;
  _onInit(String id, Emitter<MovieDetailState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    emit(
      state.copyWith(
        movieEntity: await _callAPI(id),
        status: BaseStateStatus.success,
      ),
    );
  }

  _callAPI(String id) async {
    List<Future> future = [];
    MovieDetailEntity movieEntity = MovieDetailEntity(id: id);
    future.addAll([
      _repo.getMovieAuth(id: id).then(
            (value) => value.fold(
              (l) => null,
              (r) => movieEntity = movieEntity.copyWith(movieAuth: r[0]),
            ),
          ),
      _repo.getMovieDetail(id: id).then(
            (value) => value.fold(
              (l) => null,
              (r) => movieEntity = movieEntity.copyWith(movieDetail: r),
            ),
          ),
      _repo.getMovieReview(id: id).then(
            (value) => value.fold(
              (l) => null,
              (r) => movieEntity = movieEntity.copyWith(movieReview: r),
            ),
          )
    ]);
    await Future.wait(future);
    return movieEntity;
  }
}
