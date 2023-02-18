
import 'package:flutter/cupertino.dart';

class MovieDetail {
  final int id;
  final String title;
  final String description;
  final String author;
  final double price;
  final String imageUrl;

  MovieDetail({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.price,
    required this.imageUrl});
}