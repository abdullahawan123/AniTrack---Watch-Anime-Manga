// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:jikan_api/jikan_api.dart' as _i13;
import 'package:manga_anime_app/ui/screens/anime_detail_page.dart' as _i1;
import 'package:manga_anime_app/ui/screens/home_page.dart' as _i2;
import 'package:manga_anime_app/ui/screens/login_page.dart' as _i3;
import 'package:manga_anime_app/ui/screens/main_page.dart' as _i4;
import 'package:manga_anime_app/ui/screens/manga_detail_page.dart' as _i5;
import 'package:manga_anime_app/ui/screens/profile_page.dart' as _i6;
import 'package:manga_anime_app/ui/screens/readlist_page.dart' as _i7;
import 'package:manga_anime_app/ui/screens/search_page.dart' as _i8;
import 'package:manga_anime_app/ui/screens/splash_page.dart' as _i9;
import 'package:manga_anime_app/ui/screens/watchlist_page.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AnimeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AnimeDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AnimeDetailPage(
          key: args.key,
          anime: args.anime,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    MangaDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MangaDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.MangaDetailPage(
          key: args.key,
          manga: args.manga,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    ReadlistRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ReadlistPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SearchPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashPage(),
      );
    },
    WatchlistRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WatchlistPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnimeDetailPage]
class AnimeDetailRoute extends _i11.PageRouteInfo<AnimeDetailRouteArgs> {
  AnimeDetailRoute({
    _i12.Key? key,
    required _i13.Anime anime,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          AnimeDetailRoute.name,
          args: AnimeDetailRouteArgs(
            key: key,
            anime: anime,
          ),
          initialChildren: children,
        );

  static const String name = 'AnimeDetailRoute';

  static const _i11.PageInfo<AnimeDetailRouteArgs> page =
      _i11.PageInfo<AnimeDetailRouteArgs>(name);
}

class AnimeDetailRouteArgs {
  const AnimeDetailRouteArgs({
    this.key,
    required this.anime,
  });

  final _i12.Key? key;

  final _i13.Anime anime;

  @override
  String toString() {
    return 'AnimeDetailRouteArgs{key: $key, anime: $anime}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MangaDetailPage]
class MangaDetailRoute extends _i11.PageRouteInfo<MangaDetailRouteArgs> {
  MangaDetailRoute({
    _i12.Key? key,
    required _i13.Manga manga,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          MangaDetailRoute.name,
          args: MangaDetailRouteArgs(
            key: key,
            manga: manga,
          ),
          initialChildren: children,
        );

  static const String name = 'MangaDetailRoute';

  static const _i11.PageInfo<MangaDetailRouteArgs> page =
      _i11.PageInfo<MangaDetailRouteArgs>(name);
}

class MangaDetailRouteArgs {
  const MangaDetailRouteArgs({
    this.key,
    required this.manga,
  });

  final _i12.Key? key;

  final _i13.Manga manga;

  @override
  String toString() {
    return 'MangaDetailRouteArgs{key: $key, manga: $manga}';
  }
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ReadlistPage]
class ReadlistRoute extends _i11.PageRouteInfo<void> {
  const ReadlistRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ReadlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadlistRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SearchPage]
class SearchRoute extends _i11.PageRouteInfo<void> {
  const SearchRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WatchlistPage]
class WatchlistRoute extends _i11.PageRouteInfo<void> {
  const WatchlistRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WatchlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WatchlistRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
