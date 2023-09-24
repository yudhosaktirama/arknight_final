import 'package:flutter/material.dart';

class ClipProfilePage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path jalur = Path();
    jalur.lineTo(0, size.height);
    jalur.lineTo(size.width * 0.75, size.height);
    jalur.lineTo(size.width, 0);
    jalur.close();
    return jalur;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
