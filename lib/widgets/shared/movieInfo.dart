import 'package:flutter/material.dart';
import 'package:week_2/models/index.dart';

class MovieInfo extends StatelessWidget {
  final MovieDetailModel movie;

  const MovieInfo({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(movie);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _movieBanner(),
            Container(
                padding: EdgeInsets.all(20.0),
                width: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _movieName(),
                    _sizeBox(),
                    _movieDesc(),
                    _sizeBox(),
                    _moviePoint()
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _movieBanner() {
    return Center(
        child: Image.network(
      movie.medium_cover_image,
      fit: BoxFit.contain,
    ));
  }

  Widget _movieName() {
    return Container(
      child: Text(
        movie.title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _movieDesc() {
    return Container(
      child: RichText(
        text: TextSpan(
            text: movie.description_intro,
            style: TextStyle(fontSize: 18.0)),
      ),
    );
  }

  Widget _moviePoint() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('Rating ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                Text('${movie.rating} ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.brightness_low,
                  color: Colors.yellow.shade500,
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Text('Playback',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            Text('${movie.runtime} min',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          children: [
            Text('Year',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            Text('${movie.year}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }

  Widget _sizeBox() {
    return SizedBox(
      height: 20.0,
    );
  }
}
