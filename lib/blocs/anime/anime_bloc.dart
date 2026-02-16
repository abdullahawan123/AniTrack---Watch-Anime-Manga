import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/anime_repository.dart';
import 'anime_event.dart';
import 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  final AnimeRepository _repository;

  AnimeBloc(this._repository) : super(AnimeLoadingState()) {
    on<FetchTopAnime>(_onFetchTopAnime);
  }

  Future<void> _onFetchTopAnime(
    FetchTopAnime event,
    Emitter<AnimeState> emit,
  ) async {
    try {
      if (event.page == 1) {
        emit(AnimeLoadingState());
      }

      final result = await _repository.getTopAnime(page: event.page);

      if (result.isEmpty && event.page == 1) {
        emit(AnimeEmptyState());
      } else {
        final List<dynamic> oldData = state is AnimeLoadedState
            ? (state as AnimeLoadedState).data
            : [];
        emit(
          AnimeLoadedState([
            ...oldData,
            ...result,
          ], hasReachedMax: result.isEmpty),
        );
      }
    } catch (e) {
      emit(AnimeErrorState(e.toString()));
    }
  }
}
