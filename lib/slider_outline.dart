// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SliderOutline extends StatefulWidget {
  SliderOutline({this.val, this.max, this.min, super.key});

  int? val;
  final int? min;
  final int? max;

  @override
  State<SliderOutline> createState() => _SliderOutlineState();
}

class _SliderOutlineState extends State<SliderOutline> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      autofocus: true,
      focusNode: FocusNode(canRequestFocus: mounted),
      activeColor: Colors.black12,
      label: widget.val.toString(),
      value: widget.val!.toDouble(),
      onChanged: (value) {
        setState(() {
          widget.val = value.toInt();
        });
        print(widget.val);
      },
      min: widget.min!.toDouble(),
      max: widget.max!.toDouble(),
      divisions: 5,
    );
  }
}
