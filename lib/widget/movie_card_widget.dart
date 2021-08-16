import 'package:flutter/material.dart';
import 'package:movies_application/model/movie.dart';
import 'package:movies_application/widget/add_button_widget.dart';

class MovieCardWidget extends StatelessWidget {
  final Movie movie;

  const MovieCardWidget({
    required this.movie,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.cyan[100],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Expanded(child: buildImage(movie: movie)),
              const SizedBox(height: 4),
              Text(
                movie.movieName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                movie.director,
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 4),
              buildedit(context),
              const SizedBox(height: 4),
              builddelete(context),
            ],
          ),
        ),
      );
  Widget buildedit(BuildContext context) => Container(
        width: 100,
        height: 40,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.green,
          child: Text(
            'EDIT',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  Widget builddelete(BuildContext context) => Container(
        width: 100,
        height: 40,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.red,
          child: Text(
            'DELETE',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Widget buildImage({required Movie movie}) => Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Image.asset(movie.imageUrl, fit: BoxFit.cover),
        ),
      );
}
