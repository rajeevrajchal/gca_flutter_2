import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:week_2/models/index.dart';
import 'package:week_2/widgets/index.dart';

class MovieDetailController extends GetxController {
  final int _movieId;

  MovieDetailController(this._movieId) {
    init();
  }

  init() async {
    await fetchMovieDetail(_movieId);
    update();
  }

  Widget _container = Center(
    child: CircularProgressIndicator(),
  );

  Widget get container => _container;

  Future<void> fetchMovieDetail(int id) async {
    var url = 'https://yts.mx/api/v2/movie_details.json?movie_id=';
    var response = await http.get(url + '${id}');
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      var movieDetails = MovieDetailModel.fromJson(body['data']['movie']);
      _container = MovieInfo(movie: movieDetails);
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
