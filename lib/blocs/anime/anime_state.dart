import 'package:equatable/equatable.dart';
import 'package:jikan_api/jikan_api.dart';

abstract class AnimeState extends Equatable {
  const AnimeState();

  @override
  List<Object?> get props => [];
}

class AnimeLoadingState extends AnimeState {}

class AnimeLoadedState extends AnimeState {
  final List<Anime> data;
  final bool hasReachedMax;

  const AnimeLoadedState(this.data, {this.hasReachedMax = false});

  @override
  List<Object?> get props => [data, hasReachedMax];
}

class AnimeErrorState extends AnimeState {
  final String message;

  const AnimeErrorState(this.message);

  @override
  List<Object?> get props => [message];
}

class AnimeEmptyState extends AnimeState {}
