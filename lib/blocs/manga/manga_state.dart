import 'package:equatable/equatable.dart';
import 'package:jikan_api/jikan_api.dart';

abstract class MangaState extends Equatable {
  const MangaState();

  @override
  List<Object?> get props => [];
}

class MangaLoadingState extends MangaState {}

class MangaLoadedState extends MangaState {
  final List<Manga> data;
  final bool hasReachedMax;

  const MangaLoadedState(this.data, {this.hasReachedMax = false});

  @override
  List<Object?> get props => [data, hasReachedMax];
}

class MangaErrorState extends MangaState {
  final String message;

  const MangaErrorState(this.message);

  @override
  List<Object?> get props => [message];
}

class MangaEmptyState extends MangaState {}
