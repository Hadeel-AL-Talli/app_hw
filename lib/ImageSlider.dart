import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeImageSlider extends StatelessWidget {
  List imageList1 = [
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
  ];
  List imageList2 = [
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
    'images/ipod2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'MacBook Pro\n\n',
          textAlign: TextAlign.center,
        ),
        CarouselSlider(
          options: CarouselOptions(height: 190, initialPage: 0),
          items: imageList1.map((imageUrl) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          '  Iphone13pro \n\n',
          textAlign: TextAlign.center,
        ),
        CarouselSlider.builder(
          itemCount: imageList2.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                imageList2[index],
                fit: BoxFit.fill,
              ),
            );
          },
          options: CarouselOptions(
              height: 190, initialPage: 0, enlargeCenterPage: true),
        )
      ]),
    );
  }
}
