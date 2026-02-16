import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';
import '../../repositories/user_repository.dart';
import '../../utils/service_locator.dart';

@RoutePage()
class MangaDetailPage extends StatelessWidget {
  final Manga manga;

  const MangaDetailPage({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(manga.title, overflow: TextOverflow.ellipsis),
              background: CachedNetworkImage(
                imageUrl: manga.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(color: Colors.black12),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Score: ${manga.score ?? "N/A"}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Type: ${manga.type ?? "Unknown"}'),
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            getIt<UserRepository>().addToReadlist(
                              manga.malId,
                              manga.title,
                              manga.imageUrl,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Added to Readlist'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.add),
                          label: const Text('Readlist'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Synopsis',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      manga.synopsis ?? 'No synopsis available.',
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
