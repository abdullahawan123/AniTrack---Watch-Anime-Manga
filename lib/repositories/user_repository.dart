import '../services/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
  final FirebaseService _firebaseService;

  UserRepository(this._firebaseService);

  Future<void> addToWatchlist(
    int animeId,
    String title,
    String imageUrl,
  ) async {
    await _firebaseService.updateWatchlist(animeId, {
      'animeId': animeId,
      'title': title,
      'imageUrl': imageUrl,
      'progress': 0,
      'status': 'watching',
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateAnimeProgress(int animeId, int progress) async {
    await _firebaseService.updateWatchlist(animeId, {
      'progress': progress,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> addToReadlist(int mangaId, String title, String imageUrl) async {
    await _firebaseService.updateReadlist(mangaId, {
      'mangaId': mangaId,
      'title': title,
      'imageUrl': imageUrl,
      'progress': 0,
      'status': 'reading',
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateMangaProgress(int mangaId, int progress) async {
    await _firebaseService.updateReadlist(mangaId, {
      'progress': progress,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> get watchlist => _firebaseService.getWatchlist();
  Stream<QuerySnapshot> get readlist => _firebaseService.getReadlist();
}
