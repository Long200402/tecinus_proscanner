import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../base/bloc/index.dart';
import '../../data/datasource/model/movie_model.dart';
import '../../data/repository/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.g.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._homeRepo) : super(HomeState.init()) {
    on<HomeEvent>((HomeEvent event, Emitter<HomeState> emit) async {
      await event.when(
        init: () => _onInit(emit),
        searching: () => _onSearching(emit),
        changeTab: (int index) => _onChangeTab(index, emit),
        getMovieResult: (String expression) =>
            _onGetMovieResult(expression, emit),
      );
    });
  }

  final HomeRepo _homeRepo;
  final PageController pageController = PageController();
  bool isSearching = false;
  _onInit(Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        // status: BaseStateStatus.loading,
        isSearching: isSearching,
      ),
    );
  }

  _onChangeTab(int index, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      listMovie: null,
      status: BaseStateStatus.loading,
      isSearching: false,
    ));
    switch (index) {
      case 0:
        // emit(state.copyWith(status: BaseStateStatus.loading));
        final res = await _homeRepo.getNowShowing();
        emit(
          res.fold(
            (l) => state.copyWith(status: BaseStateStatus.failed),
            (r) => state.copyWith(
              listMovie: r,
              isSearching: isSearching,
              status: BaseStateStatus.success,
            ),
          ),
        );
        break;
      case 1:
        // emit(state.copyWith(status: BaseStateStatus.loading));
        final res = await _homeRepo.getComingSoon();
        emit(res.fold(
          (l) => state.copyWith(status: BaseStateStatus.failed),
          (r) => state.copyWith(
            listMovie: r,
            isSearching: isSearching,
            status: BaseStateStatus.success,
          ),
        ));
        break;
    }
  }

  _onSearching(Emitter<HomeState> emit) async {
    isSearching = !isSearching;
    emit(state.copyWith(
      isSearching: isSearching,
    ));
  }

  _onGetMovieResult(String expression, Emitter<HomeState> emit) async {
    if (expression.trim().isNotEmpty) {
      emit(state.copyWith(status: BaseStateStatus.loading, listMovie: null));

      final res = await _homeRepo.getMovieResult(expression: expression);
      emit(res.fold(
        (l) => state.copyWith(status: BaseStateStatus.failed),
        (r) => state.copyWith(
          status: BaseStateStatus.success,
          listMovie: r,
        ),
      ));
    }
  }
}
