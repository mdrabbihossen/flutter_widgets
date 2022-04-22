import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:
              BoxDecoration(color: Colors.purpleAccent, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
