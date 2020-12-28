import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Center(
        child: Text(
          'YTS',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        Container(
            child: IconButton(
              onPressed: () => {

              },
              icon: Icon(Icons.search),
            )),
        Container(
            child: IconButton(
              onPressed: () => {

              },
              icon: Icon(Icons.person),
            )),
      ],
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Center(
                    child: Text(
                      'Movies',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Center(
                    child: Text(
                      'TV Shows',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Center(
                    child: Text(
                      'My Fav',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(15.0)),
      brightness: Brightness.dark,
      floating: true,
    );
  }
}
