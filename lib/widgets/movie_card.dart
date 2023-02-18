import 'package:first_ui/model/MovieDetail.dart';
import 'package:first_ui/pages/home_screen.dart';
import 'package:first_ui/pages/login_screen.dart';
import 'package:first_ui/pages/movieDetail_screen.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final MovieDetail movie;

  MovieCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => MovieScreen(movie)));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 250,
            child: Image.network(
              movie.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Container(
                width: MediaQuery.of(context).size.width / 2 - 5,
                height: 50,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movie.title.toUpperCase(),
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text(movie.author,
                            style: const TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20, top: 0),
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.deepOrange,
                                )))
                      ],
                    )
                  ],
                )))
      ],
    );
  }
}
