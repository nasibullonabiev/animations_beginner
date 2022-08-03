import 'package:flutter/material.dart';

import '../models/trip_model.dart';
import '../shared/heart.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Details extends StatelessWidget {

  final Trip trip;
  Details({ required this.trip });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Hero(
                    tag: 'location-img-${trip.img}',
                    child: Image.asset(
                      'assets/images/${trip.img}',
                      height: 360,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  )
              ),
              const SizedBox(height: 30),
              ListTile(
                  title: Text(
                      trip.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
                  subtitle: Text(
                      '${trip.nights} night stay for only \$${trip.price}',
                      style: const TextStyle(letterSpacing: 1)
                  ),
                  trailing: const Heart()
              ),
              Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                      lipsum.createText(numParagraphs: 1, numSentences: 3),
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}