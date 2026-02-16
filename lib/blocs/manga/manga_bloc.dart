import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/manga_repository.dart';
import 'manga_event.dart';
import 'manga_state.dart';

class MangaBloc extends Bloc<MangaEvent, MangaState> {
  final MangaRepository _repository;

  MangaBloc(this._repository) : super(MangaLoadingState()) {
    on<FetchTopManga>(_onFetchTopManga);
  }

  Future<void> _onFetchTopManga(
    FetchTopManga event,
    Emitter<MangaState> emit,
  ) async {
    try {
      if (event.page == 1) {
        emit(MangaLoadingState());
      }

      final result = await _repository.getTopManga(page: event.page);

      if (result.isEmpty && event.page == 1) {
        emit(MangaEmptyState());
      } else {
        final List<dynamic> oldData = state is MangaLoadedState
            ? (state as MangaLoadedState).data
            : [];
        emit(
          MangaLoadedState([
            ...oldData,
            ...result,
          ], hasReachedMax: result.isEmpty),
        );
      }
    } catch (e) {
      emit(MangaErrorState(e.toString()));
    }
  }
}
