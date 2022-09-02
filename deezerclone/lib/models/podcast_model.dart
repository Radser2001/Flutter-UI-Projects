class Podcast {
  final String title;
  final String img;

  Podcast({required this.title, required this.img});
}

List<Podcast> podcasts = [
  Podcast(title: 'Podcast Chart', img: 'assets/podcast_chart.jpg'),
  Podcast(title: 'News and Politics', img: 'assets/news_politics.jpg'),
  Podcast(title: 'Raps', img: 'assets/rap.jpg'),
  Podcast(title: 'Rap and HipHop', img: 'assets/hiphop.jpg')
];
