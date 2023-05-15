import 'package:flutter/material.dart';

class ListModel {
  String text;
  Image image;
  Function onTap;
  ListModel({
    required this.image,
    required this.text,
    required this.onTap,
  });
}
