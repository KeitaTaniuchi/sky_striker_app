import 'package:flutter/material.dart';

class CommonOuterBorder extends StatelessWidget {
  final BorderWidth;
  final insertionWidget;

  const CommonOuterBorder(
      {Key? key, required this.BorderWidth, required this.insertionWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: BorderWidth),
        ),
        child: insertionWidget,
      ),
    );
  }
}
