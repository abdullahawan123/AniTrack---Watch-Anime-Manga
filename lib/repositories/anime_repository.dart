import 'package:jikan_api/jikan_api.dart';

class AnimeRepository {
  final Jikan _jikan;

  AnimeRepository(this._jikan);

  Future<List<Anime>> getTopAnime({int page = 1}) async {
    final result = await _jikan.getTopAnime(page: page);
    return result.toList();
  }

  Future<Anime> getAnimeDetail(int id) async {
    return await _jikan.getAnime(id);
  }

  Future<List<Episode>> getAnimeEpisodes(int id, {int page = 1}) async {
    final result = await _jikan.getAnimeEpisodes(id, page: page);
    return result.toList();
  }

  Future<List<Anime>> searchAnime(String query) async {
    final result = await _jikan.searchAnime(query: query);
    return result.toList();
  }
}
