import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/hero_widgets/screen-2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Widgets'),
      ),
      body: Center(
        child: Hero(tag: 'image-1', child: buildImage()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Screen2(),
            ),
          );
        },
      ),
    );
  }

  Widget buildImage() => Image.network(
        'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
        fit: BoxFit.cover,
        width: 240,
        height: 240,
      );
}
