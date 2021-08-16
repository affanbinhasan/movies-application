import 'package:flutter/material.dart';
import 'package:movies_application/data/movies.dart';
import 'package:movies_application/model/movie.dart';

class BackgroundWidget extends StatelessWidget {
  final PageController controller;

  const BackgroundWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return buildBackground(movie: movie);
        },
        itemCount: movies.length,
      );

  Widget buildBackground({@required Movie? movie}) => Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.15, 0.75],
                colors: [
                  Colors.black,
                  Colors.blueGrey,
                ],
              ),
            ),
          )
        ],
      );
}
