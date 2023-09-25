import 'dart:convert';

class Media {
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releasedDate;
  List<dynamic> genereIds;

  factory Media(Map jsonMap){
    try{
      return new Media.deserialize(jsonMap);
    }catch(ex){
      throw ex;
    }
  }

  Media.deserialize(Map json):
  id = json["id"].toInt(),
  voteAverage = json["vote_average"].toDouble(),
  title = json["title"],
  posterPath = json["poster_path"]??"",
  backdropPath = json["backdrop_path"]??"",
  overview = json["overview"],
  releasedDate = json["released_date"],
  genereIds = json["genere_ids"].toList();
}
