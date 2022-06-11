class Movie {

  String movieCoverLink;
  String movieTitle;
  String publishYear;
  int movieMinutes;
  var ageLimit;
  double imdbScore;
  var metaScore;
  bool isSponsored;

  Movie({required this.movieTitle, required this.movieCoverLink,
    required this.publishYear,required this.movieMinutes,
    required this.imdbScore,required this.metaScore,required this.ageLimit,required this.isSponsored});

}