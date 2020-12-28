import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_2/controller/index.dart';

class MovieDetail extends StatelessWidget {
  final int movieId;
  final String movieName;

  const MovieDetail({Key key, @required this.movieId, @required this.movieName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('${movieName}'),
        actions: <Widget>[
          Container(
              child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.search),
          )),
          Container(
              child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.person),
          )),
        ],
      ),
      backgroundColor: Colors.black26,
      body: GetBuilder(
          init: MovieDetailController(movieId),
          builder: (MovieDetailController movieDetailController) => Container(
                child: movieDetailController.container
              )),
    );
  }
}
