import 'package:aplikasiwisata/model/tourism_place.dart';
import 'package:aplikasiwisata/screen/mobile/detail.dart';
import 'package:aplikasiwisata/screen/web/detail.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailScreenWeb(place: place);
      } else {
        return DetailScreenMobile(place: place);
      }
    });
  }
}
