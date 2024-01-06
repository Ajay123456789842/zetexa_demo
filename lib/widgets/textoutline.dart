import 'package:flutter/material.dart';

class TextOutline extends StatelessWidget {
  const TextOutline(
      {this.fontweight, this.fontsize, this.color, this.text, super.key});

  final String? text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style:
          TextStyle(color: color, fontSize: fontsize, fontWeight: fontweight),
    );
  }
}
