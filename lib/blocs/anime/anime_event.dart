import 'package:equatable/equatable.dart';

abstract class AnimeEvent extends Equatable {
  const AnimeEvent();

  @override
  List<Object?> get props => [];
}

class FetchTopAnime extends AnimeEvent {
  final int page;
  const FetchTopAnime({this.page = 1});

  @override
  List<Object?> get props => [page];
}
