import 'package:flutter/material.dart';

class Movie {
  final String url, title, background_image,medium_cover_image;
  final int id, year, runtime;

  Movie(
      {@required this.url,
      @required this.background_image,
      @required this.medium_cover_image,
      @required this.title,
      @required this.id,
      @required this.year,
      @required this.runtime});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        url: json['url'],
        background_image: json['background_image'],
        medium_cover_image: json['medium_cover_image'],
        title: json['title'],
        id: json['id'],
        year: json['year'],
        runtime: json['runtime']);
  }
}

class MovieDetailModel {
  final String url, title, medium_cover_image, description_intro, language;
  final int download_count, runtime, year;
  final double rating;

  MovieDetailModel(
      {@required this.url,
      @required this.title,
      @required this.medium_cover_image,
      @required this.description_intro,
      @required this.language,
      @required this.download_count,
      @required this.runtime,
      @required this.year,
      @required this.rating});

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
        url: json['url'],
        medium_cover_image: json['medium_cover_image'],
        description_intro: json['description_intro'],
        language: json['language'],
        download_count: json['download_count'],
        runtime: json['runtime'],
        title: json['title'],
        year: json['year'],
        rating: json['rating']);
  }
}
