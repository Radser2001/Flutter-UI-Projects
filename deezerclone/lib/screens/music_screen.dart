import 'package:deezerclone/widgets/albums.dart';
import 'package:deezerclone/widgets/favorite_artists.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF180505),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Music',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.notifications_none_outlined,
                          size: 32.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.settings_outlined,
                          size: 32.0,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const FavoriteArtists(),
            const SizedBox(height: 10.0),
            const Albums(),
          ],
        ),
      ),
    );
  }
}
