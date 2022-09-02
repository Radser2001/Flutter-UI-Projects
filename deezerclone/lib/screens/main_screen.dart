import 'package:deezerclone/models/podcast_model.dart';
import 'package:deezerclone/screens/favorites_screen.dart';
import 'package:deezerclone/screens/music_screen.dart';
import 'package:deezerclone/screens/podcast_screen.dart';
import 'package:deezerclone/screens/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final screens = [
    const MusicScreen(),
    const PodcastScreen(),
    const FavoriteScreen(),
    const SearchScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF180505),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF180505),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 18,
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
            // navigateToScreens(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                color: index == 0 ? Colors.redAccent : Colors.white,
              ),
              label: 'Music',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.mic,
                    color: index == 1 ? Colors.redAccent : Colors.white),
                label: 'Podcast'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite,
                    color: index == 2 ? Colors.redAccent : Colors.white),
                label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,
                    color: index == 3 ? Colors.redAccent : Colors.white),
                label: 'Search'),
          ]),
    );
  }
}
