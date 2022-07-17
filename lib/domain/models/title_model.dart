// import 'package:json_annotation/json_annotation.dart';

class Title {
  String id;
  String title;
  String? type;
  String? description;
  // @JsonKey(name: 'release_year')
  int? releaseYear;
  // @JsonKey(name: 'age_certification')
  String? ageCertification;
  int? runtime;
  List<String>? genres;
  // @JsonKey(name: 'production_countries')
  List<String>? productionCountries;
  int? seasons;
  // @JsonKey(name: 'imdb_id')
  String? imdbId;
  // @JsonKey(name: 'imdb_score')
  double? imdbScore;
  // @JsonKey(name: 'imdb_votes')
  int? imdbVotes;
  // @JsonKey(name: 'tmdb_popularity')
  double? tmdbPopularity;
  // @JsonKey(name: 'tmdb_score')
  double? tmdbScore;

  Title({
    required this.id,
    required this.title,
    this.type,
    this.description,
    this.releaseYear,
    this.ageCertification,
    this.runtime,
    this.genres,
    this.productionCountries,
    this.seasons,
    this.imdbId,
    this.imdbScore,
    this.imdbVotes,
    this.tmdbPopularity,
    this.tmdbScore,
  });

  factory Title.fromMap(Map<String, dynamic> data) {
    return Title(
      id: data['id'],
      title: data['title'],
      type: data['type'],
      description: data['description'],
      releaseYear: data['release_year'],
      ageCertification: data['age_certification'],
      runtime: data['runtime'],
      genres: data['genres'],
      productionCountries: data['production_countries'],
      seasons: data['seasons'],
      imdbId: data['imdb_id'],
      imdbScore: data['imdb_score'],
      imdbVotes: data['imdb_votes'],
      tmdbPopularity: data['tmdb_popularity'],
      tmdbScore: data['tmdb_score'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id':id,
      'title': title,
      'type': type,
      'description': description,
      'release_year': releaseYear,
      'age_certification': ageCertification,
      'runtime': runtime,
      'genres': genres,
      'production_countries': productionCountries,
      'seasons': seasons,
      'imdb_id': imdbId,
      'imdb_score': imdbScore,
      'imdb_votes': imdbVotes,
      'tmdb_popularity': tmdbPopularity,
      'tmdb_score': tmdbScore,
    };
  }
}
