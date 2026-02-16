import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/anime/anime_bloc.dart';
import '../../blocs/anime/anime_event.dart';
import '../../blocs/anime/anime_state.dart';
import '../../blocs/manga/manga_bloc.dart';
import '../../blocs/manga/manga_event.dart';
import '../../blocs/manga/manga_state.dart';
import '../../utils/service_locator.dart';
import '../widgets/anime_list_item.dart';
import '../widgets/manga_list_item.dart';
import '../widgets/list_shimmer.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AnimeBloc(getIt())..add(const FetchTopAnime()),
        ),
        BlocProvider(
          create: (context) => MangaBloc(getIt())..add(const FetchTopManga()),
        ),
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'AniTrack',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Anime'),
                Tab(text: 'Manga'),
              ],
              indicatorColor: Colors.deepPurple,
              labelColor: Colors.deepPurple,
            ),
          ),
          body: const TabBarView(children: [AnimeTab(), MangaTab()]),
        ),
      ),
    );
  }
}

class AnimeTab extends StatelessWidget {
  const AnimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeBloc, AnimeState>(
      builder: (context, state) {
        if (state is AnimeLoadingState) {
          return const ListShimmer();
        } else if (state is AnimeLoadedState) {
          return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (context, index) =>
                AnimeListItem(anime: state.data[index]),
          );
        } else if (state is AnimeErrorState) {
          return Center(child: Text(state.message));
        }
        return const Center(child: Text('No data'));
      },
    );
  }
}

class MangaTab extends StatelessWidget {
  const MangaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MangaBloc, MangaState>(
      builder: (context, state) {
        if (state is MangaLoadingState) {
          return const ListShimmer();
        } else if (state is MangaLoadedState) {
          return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (context, index) =>
                MangaListItem(manga: state.data[index]),
          );
        } else if (state is MangaErrorState) {
          return Center(child: Text(state.message));
        }
        return const Center(child: Text('No data'));
      },
    );
  }
}
