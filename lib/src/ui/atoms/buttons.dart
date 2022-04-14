import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final action;
  final String textDetail;
  final double textSize;

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
          showDialog(
              context: context,
              builder: (context) {
                return action;
              });
        },
        child: Text(
          textDetail,
          style: TextStyle(fontSize: textSize),
        ));
  }
}

class CommonIconButton extends StatelessWidget {
  final action;
  final String textDetail;
  final double textSize;
  final icon;

  const CommonIconButton(
      {Key? key,
      required this.action,
      required this.textDetail,
      required this.textSize,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return action;
            });
      },
      label: Text(textDetail, style: TextStyle(fontSize: textSize)),
      icon: icon,
    );
  }
}
