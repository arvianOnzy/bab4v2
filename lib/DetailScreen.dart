import 'package:bab4v2/models/tourism_place.dart';
import 'package:flutter/material.dart';
import 'package:bab4v2/editScreen.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.edit_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return editScreen(
                      place: place,
                    );
                  }),
                );
              }),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.network(place.img),
                  Container(
                      //Container for title
                      margin: EdgeInsets.only(top: 16.0),
                      child: Text(
                        place.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Lobster',
                        ),
                      )),
                  Container(
                      //Container for Widget ListView
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.calendar_today),
                              Text(place.openDay)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.access_time),
                              Text(place.openTime)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(Icons.attach_money),
                              Text(place.price)
                            ],
                          ),
                        ],
                      )),
                  Container(
                    //Container for Description
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      place.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                  ),
                  Container(
                    //container for Image ListView
                    height: 150,
                    padding: EdgeInsets.only(bottom: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(place.img1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(place.img2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(place.img3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
