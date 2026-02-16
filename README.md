# AniTrack - Flutter Anime & Manga Tracker

A fully functional Flutter application to track your favorite Anime and Manga using the Jikan API and Firebase.

## Features

- **Top Anime & Manga**: Stay updated with the most popular titles.
- **Search**: Extensive search for any anime or manga.
- **Details**: Full synopsis, scores, and information.
- **Watchlist & Readlist**: Track your progress and save items to your personal list.
- **Firebase Auth**: Secure login with Google and Email.
- **Syncing**: Real-time sync across devices via Cloud Firestore.
- **Offline Mode**: Local caching for a smooth experience.
- **Premium UI**: Modern design with Shimmer effects and custom fonts.

## Architecture

- **BLoC**: State management pattern for separation of concerns.
- **Clean Architecture**: Repository pattern for data abstraction.
- **AutoRoute**: Declarative routing system.
- **GetIt**: Dependency injection for service management.
- **BuiltValue**: Type-safe models from Jikan API.

## Setup

1. **Flutter Version**: Ensure you are on Flutter 3.10.0 or later.
2. **Dependencies**: Run `flutter pub get`.
3. **Firebase**: 
   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add Android/iOS/Web apps.
   - Run `flutterfire configure`.
4. **Run**: `flutter run`.

## Generation

To regenerate routes and models after changes:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Structure

```
lib/
├── blocs/        # Business logic components
├── models/       # Data models
├── repositories/ # Data source abstractions
├── services/     # Third-party services (Firebase, API)
├── ui/           # Screens and widgets
└── utils/        # Helpers and DI
```
