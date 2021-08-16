import 'package:flutter/material.dart';
import 'package:movies_application/data/movies.dart';
import 'package:movies_application/page/add_page.dart';

class AddButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 40,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddPage()));
          },
          color: Colors.blue[400],
          child: Text(
            'ADD MOVIE',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}

class AddMovieCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: 80,
        height: 40,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.green,
          child: Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
