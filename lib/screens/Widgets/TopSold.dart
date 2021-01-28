import 'package:flutter/material.dart';

class TopSold extends StatelessWidget {
  final List<String> images = [
    "topsold1.jpg",
    "topsold2.jpg",
    "topsold3.jpg",
    "topsold4.jpg",
    "topsold5.jpg",
    "topsold6.jpg",
    "topsold7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Card(
          shadowColor: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "Assets/Images/" + images[index],
                height: 90,
                filterQuality: FilterQuality.high,
              ),
              Text('data')
            ],
          )),
    );
  }
}
