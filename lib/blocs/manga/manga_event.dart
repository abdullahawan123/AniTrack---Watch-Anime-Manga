import 'package:equatable/equatable.dart';

abstract class MangaEvent extends Equatable {
  const MangaEvent();

  @override
  List<Object?> get props => [];
}

class FetchTopManga extends MangaEvent {
  final int page;
  const FetchTopManga({this.page = 1});

  @override
  List<Object?> get props => [page];
}
