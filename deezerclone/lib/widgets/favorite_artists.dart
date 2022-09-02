import 'package:deezerclone/models/podcast_model.dart';
import 'package:flutter/material.dart';

class FavoriteArtists extends StatelessWidget {
  const FavoriteArtists({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Your favorite artists',
              style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: podcasts.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage(podcasts[index].img),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
