import 'package:aplikasiwisata/component/favorite.dart';
import 'package:aplikasiwisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

class DetailScreenMobile extends StatelessWidget {
  final TourismPlace place;

  DetailScreenMobile({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset(place.imageAsset),
              SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green.shade50,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back)),
                          ),
                          FavoriteButton()
                        ],
                      ))),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today_rounded),
                    Text(place.openDays),
                    SizedBox(
                      height: 8.0,
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time_outlined),
                    Text(place.openTime),
                    SizedBox(
                      height: 8.0,
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on_outlined),
                    Text(place.ticketPrice),
                    SizedBox(
                      height: 8.0,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: Text(
              place.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: place.imageUrls.map((img) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: AspectRatio(
                        aspectRatio: 150 / 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  alignment: FractionalOffset.topCenter,
                                  image: NetworkImage(img))),
                        ),
                      )),
                );
              }).toList(),
            ),
          )
        ],
      )),
    );
  }
}
