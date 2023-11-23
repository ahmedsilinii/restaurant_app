import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/menu.dart';

class CarouselWidget extends StatelessWidget {
  final List<Widget> items;

  const CarouselWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false, // Set to true for infinite scroll
        viewportFraction: 0.8, // Adjust the fraction as needed
        enlargeCenterPage: true,
        autoPlay: false, // Set to true for autoplay
      ),
      items: items.map((widget) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: widget,
            );
          },
        );
      }).toList(),
    );
  }
}
