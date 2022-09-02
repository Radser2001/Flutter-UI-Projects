import 'package:deezerclone/models/podcast_model.dart';
import 'package:flutter/material.dart';

class FavoritePodcasts extends StatelessWidget {
  const FavoritePodcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 20.0),
            child: Text(
              'Your favorite podcasts',
              style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: podcasts.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          podcasts[index].img,
                          height: 100,
                          width: 140,
                          fit: BoxFit.fill,
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
