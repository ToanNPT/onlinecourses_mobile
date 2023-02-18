import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_ui/model/MovieDetail.dart';
import 'package:flutter/material.dart';

import "../ultis/TitlteConstants.dart" as constantsString;

class MovieScreen extends StatelessWidget {
  final MovieDetail movie;

  MovieScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(constantsString.APPBAR_TITLE,
                style: const TextStyle(color: Colors.black, letterSpacing: 1))),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {},
                  child: Text("ADD TO CART",
                      style: new TextStyle(color: Colors.black)))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.9,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height),
            items: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(movie.imageUrl),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 3,
                              blurRadius: 9,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ])))
            ],
          )),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Colors.blueGrey),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 70,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(movie.title.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(movie.price.toString() + " vnd",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                  )))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ExpansionTile(
              title: Text(
                "Film Description",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  title: Text(movie.description),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
