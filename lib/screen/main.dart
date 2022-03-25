import 'package:aplikasiwisata/model/tourism_place.dart';
import 'package:aplikasiwisata/screen/detail.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Wisata"),
        ),
        body: ListView.builder(
            itemCount: tourismPlaceList.length,
            itemBuilder: (context, index) {
              final TourismPlace place = tourismPlaceList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: place);
                  }));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(place.imageAsset),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                place.name,
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(place.location)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
