import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final VoidCallback action;
  final textDetail;
  final textSize;

  const CommonTextButton(
      {Key? key,
      required this.action,
      required this.textDetail,
      required this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          action;
        },
        child: Text(
          textDetail,
          style: TextStyle(fontSize: textSize),
        ));
  }
}
