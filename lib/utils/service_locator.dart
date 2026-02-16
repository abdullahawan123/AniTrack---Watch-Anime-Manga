import 'package:get_it/get_it.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../repositories/anime_repository.dart';
import '../repositories/manga_repository.dart';
import '../repositories/user_repository.dart';
import '../services/firebase_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Services
  getIt.registerLazySingleton<Jikan>(() => Jikan());
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<FirebaseService>(() => FirebaseService());

  // Repositories
  getIt.registerLazySingleton<AnimeRepository>(
    () => AnimeRepository(getIt<Jikan>()),
  );
  getIt.registerLazySingleton<MangaRepository>(
    () => MangaRepository(getIt<Jikan>()),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(getIt<FirebaseService>()),
  );
}
