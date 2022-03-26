import 'package:aplikasiwisata/component/favorite.dart';
import 'package:aplikasiwisata/model/tourism_place.dart';
import 'package:aplikasiwisata/screen/mobile/detail.dart';
import 'package:flutter/material.dart';

class DetailScreenWeb extends StatefulWidget {
  final TourismPlace place;

  DetailScreenWeb({required this.place});

  @override
  _DetailScreenWeb createState() => _DetailScreenWeb();
}

class _DetailScreenWeb extends State<DetailScreenWeb> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 64, right: 64),
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(
                    'Wisataku',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.place.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Scrollbar(
                              isAlwaysShown: true,
                              controller: _scrollController,
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  controller: _scrollController,
                                  children: widget.place.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          child: AspectRatio(
                                            aspectRatio: 150 / 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          FractionalOffset
                                                              .topCenter,
                                                      image:
                                                          NetworkImage(url))),
                                            ),
                                          )),
                                    );
                                  }).toList(),
                                ),
                              ))
                        ],
                      )),
                      SizedBox(
                        width: 32,
                      ),
                      Expanded(
                          child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                child: Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: 'Raleway'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.calendar_today),
                                      SizedBox(width: 8.0),
                                      Text(
                                        widget.place.openDays,
                                      ),
                                    ],
                                  ),
                                  FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.access_time),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.place.openTime,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.monetization_on),
                                  SizedBox(width: 8.0),
                                  Text(
                                    widget.place.ticketPrice,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ]),
              ),
            ),
          )),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
