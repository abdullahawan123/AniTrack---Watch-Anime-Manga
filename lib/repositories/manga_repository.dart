import 'package:jikan_api/jikan_api.dart';

class MangaRepository {
  final Jikan _jikan;

  MangaRepository(this._jikan);

  Future<List<Manga>> getTopManga({int page = 1}) async {
    final result = await _jikan.getTopManga(page: page);
    return result.toList();
  }

  Future<Manga> getMangaDetail(int id) async {
    return await _jikan.getManga(id);
  }

  Future<List<Manga>> searchManga(String query) async {
    final result = await _jikan.searchManga(query: query);
    return result.toList();
  }
}
