import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_2/models/index.dart';
import 'package:week_2/screens/index.dart';


class MovieCard extends StatefulWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          _isClicked = true;
        }),
        Future.delayed(
            Duration(milliseconds: 100),
            () => {
                  setState(() {
                    _isClicked = false;
                  })
                }),
        Get.to(MovieDetail(movieId: widget.movie.id, movieName: widget.movie.title))
      },
      child: Container(
        decoration: !_isClicked
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(widget.movie.medium_cover_image),
                    fit: BoxFit.cover),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
        // child: Container(
        //   color: Colors.transparent,
        //   margin: EdgeInsets.only(bottom: 20.0),
        //   padding: EdgeInsets.only(left: 20.0, right: 20.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         widget.movie.title,
        //         style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 20.0,
        //             fontWeight: FontWeight.bold),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
