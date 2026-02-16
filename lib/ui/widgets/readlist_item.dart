import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../repositories/user_repository.dart';
import '../../utils/service_locator.dart';

class ReadlistItem extends StatelessWidget {
  final Map<String, dynamic> data;

  const ReadlistItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: CachedNetworkImage(
            imageUrl: data['imageUrl'] ?? '',
            width: 50,
            height: 75,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(data['title'] ?? 'Unknown'),
        subtitle: Text('Progress: Ch ${data['progress'] ?? 0}'),
        trailing: IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () {
            final currentProgress = data['progress'] ?? 0;
            getIt<UserRepository>().updateMangaProgress(
              data['mangaId'],
              currentProgress + 1,
            );
          },
        ),
      ),
    );
  }
}
