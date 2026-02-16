import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../repositories/anime_repository.dart';
import '../../repositories/manga_repository.dart';
import '../../utils/service_locator.dart';
import '../widgets/anime_list_item.dart';
import '../widgets/manga_list_item.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _results = [];
  bool _isLoading = false;
  String _searchType = 'anime';

  Future<void> _performSearch(String query) async {
    if (query.isEmpty) return;
    setState(() => _isLoading = true);
    try {
      if (_searchType == 'anime') {
        final results = await getIt<AnimeRepository>().searchAnime(query);
        setState(() => _results = results);
      } else {
        final results = await getIt<MangaRepository>().searchManga(query);
        setState(() => _results = results);
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search anime or manga...',
            border: InputBorder.none,
          ),
          onSubmitted: _performSearch,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.filter_list),
            onSelected: (value) {
              setState(() => _searchType = value);
              if (_searchController.text.isNotEmpty) {
                _performSearch(_searchController.text);
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'anime', child: Text('Anime')),
              const PopupMenuItem(value: 'manga', child: Text('Manga')),
            ],
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _results.isEmpty
          ? const Center(child: Text('Search for something interesting!'))
          : ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                final item = _results[index];
                return _searchType == 'anime'
                    ? AnimeListItem(anime: item)
                    : MangaListItem(manga: item);
              },
            ),
    );
  }
}
