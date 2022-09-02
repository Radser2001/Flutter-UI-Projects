import 'package:deezerclone/models/podcast_model.dart';
import 'package:deezerclone/widgets/favorite_podcasts.dart';
import 'package:deezerclone/widgets/podcast_categories.dart';
import 'package:flutter/material.dart';

class PodcastScreen extends StatefulWidget {
  const PodcastScreen({super.key});

  @override
  State<PodcastScreen> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF180505),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Podcast',
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
              const FavoritePodcasts(),
              const SizedBox(height: 50.0),
              const PodcastCategories()
            ],
          ),
        ),
      )),
    );
  }
}
