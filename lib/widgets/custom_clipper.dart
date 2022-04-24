import 'package:flutter/material.dart';

class CustomCLipper extends StatelessWidget {
  const CustomCLipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Custom Clipper'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    height: 200,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.85, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
