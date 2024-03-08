import 'package:flutter/material.dart';

class CardModel {
  String name;
  String description;
  String image;
  Color color;
  String tools;
  String duration;
  String links;
  CardModel({
    required this.name,
    required this.description,
    required this.image,
    required this.color,

    required this.tools,
    required this.duration,
    required this.links,
  });
}
