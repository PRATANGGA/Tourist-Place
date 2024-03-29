import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/tourism_place.dart';
import '../widgets/favorite_button.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  final bool isFavorite = false;
  const DetailScreen({super.key, required this.place});

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
                          backgroundColor: Colors.grey,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back)),
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8,
                      ),
                      Text(place.openTime),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.monetization_on),
                      SizedBox(
                        height: 8,
                      ),
                      Text(place.ticketPrice),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: place.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }
}
