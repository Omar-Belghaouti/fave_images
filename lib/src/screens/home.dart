import 'package:fave_images/src/styles/global.dart';
import 'package:fave_images/src/widgets/image_container.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: titleTextStyle,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int i) {
                return ImageContainer(
                  imageTitle: 'imageTitle ' + i.toString(),
                  imageSource: 'assets/images/${i + 1}.jpg',
                );
              })),
    );
  }
}
