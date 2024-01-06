// TODO Implement this library.import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerOutline extends StatelessWidget {
  ContainerOutline(
      {this.height, this.width, this.color, this.child, super.key});
  double? height;
  double? width;
  Color? color;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: child,
    );
  }
}
