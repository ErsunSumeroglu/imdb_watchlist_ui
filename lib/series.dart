class Series {

  String movieCoverLink;
  String movieTitle;
  String publishYear;
  int episodesCount;
  var ageLimit;
  double imdbScore;
  bool isSponsored;
  Series({required this.movieTitle, required this.movieCoverLink,
    required this.publishYear,required this.episodesCount,
    required this.imdbScore,required this.ageLimit,required this.isSponsored});


}