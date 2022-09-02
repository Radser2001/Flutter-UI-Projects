import 'package:deezerclone/models/podcast_model.dart';
import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Text(
          'For You',
          style: TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      SizedBox(
        child: GridView.builder(
          padding: const EdgeInsets.all(3.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: podcasts.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(podcasts[index].img,
                        height: 150, width: 150, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'New Album',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}
