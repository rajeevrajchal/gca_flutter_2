import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_2/controller/index.dart';
import 'package:week_2/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: GetBuilder(
        init: MovieController(),
        builder: (MovieController movieController) => CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
            ),
            _bannerImage(),
            _silverPadding(),
            _imageGrid(movieController),
            _silverPadding(),
          ],
        ),
      ),
    );
  }

  Widget _bannerImage() {
    return SliverToBoxAdapter(
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://yts.mx/assets/images/movies/the_shop_around_the_corner_1940/large-cover.jpg'),
              fit: BoxFit.contain),
        ),
      ),
    );
  }

  Widget _imageGrid(movieController) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      childAspectRatio: 1,
      children: movieController.movieCard,
    );
  }

  Widget _loadMore() {
    return SliverToBoxAdapter(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            'Load More',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }

  Widget _silverPadding() {
    return SliverPadding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}
