import 'package:flutter/material.dart';

class CommonOuterBorder extends StatelessWidget {
  final double borderWidth;
  final insertionWidget;

  const CommonOuterBorder(
      {Key? key, required this.borderWidth, required this.insertionWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: borderWidth),
        borderRadius: BorderRadius.circular(5),
      ),
      child: insertionWidget,
    );
  }
}

class WidthInfinityOuterBorder extends StatelessWidget {
  final double borderWidth;
  final insertionWidget;

  const WidthInfinityOuterBorder(
      {Key? key, required this.borderWidth, required this.insertionWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: borderWidth),
        borderRadius: BorderRadius.circular(5),
      ),
      child: insertionWidget,
    );
  }
}
