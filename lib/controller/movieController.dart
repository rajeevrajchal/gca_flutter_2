import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:week_2/models/index.dart';
import 'package:week_2/widgets/index.dart';

class MovieController extends GetxController {
  MovieController() {
    init();
  }

  List<Widget> _movieCard = [
    Center(
      child: CircularProgressIndicator(),
    )
  ];

  List<Widget> get movieCard => _movieCard;

  init() async {
    await _fetchMovie();
    update();
  }

  List<Widget> tempList = List();

  //fetch data
  Future<void> _fetchMovie() async {
    var url = 'https://yts.mx/api/v2/list_movies.json';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      final parsed = body['data']['movies'].cast<Map<dynamic, dynamic>>();
      // final movieList = parsed.map<Movie>((json) => Movie.fromJson(json)).toList();
      final movieList =
          parsed.map<Movie>((json) => Movie.fromJson(json)).toList();
      for (int i = 0; i < movieList.length; i++) {
        Movie movieModel = Movie(
            url: movieList[i].url,
            background_image: movieList[i].background_image,
            medium_cover_image: movieList[i].medium_cover_image,
            title: movieList[i].title,
            id: movieList[i].id,
            year: movieList[i].year,
            runtime: movieList[i].runtime);
        tempList.add(MovieCard(movie: movieModel));
      }
      // tempList.add(Center(child: Text("Load More", style: TextStyle(color: Colors.white))));
      _movieCard = tempList;
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
