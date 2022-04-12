import 'package:flutter/material.dart';

class OuterBorder extends StatelessWidget {
  final insertionContents;

  const OuterBorder({Key? key, required this.insertionContents})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: insertionContents,
    );
  }
}
