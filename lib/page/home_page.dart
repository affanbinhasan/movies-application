import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_application/data/movies.dart';
import 'package:movies_application/widget/background_widget.dart';
import 'package:movies_application/widget/add_button_widget.dart';
import 'package:movies_application/widget/movie_card_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  final User user;

  HomePage(this.user);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.close),
          actions: [Icon(Icons.person_outline), SizedBox(width: 15)],
        ),
        body: Stack(
          children: [
            BackgroundWidget(controller: controller),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CarouselSlider(
                    items:
                        movies.map((e) => MovieCardWidget(movie: e)).toList(),
                    options: CarouselOptions(
                      enableInfiniteScroll: true,
                      viewportFraction: 0.75,
                      height: MediaQuery.of(context).size.height * 0.7,
                      enlargeCenterPage: true,
                      onPageChanged: (index, _) => controller.animateToPage(
                        index,
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  AddButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      );
}
