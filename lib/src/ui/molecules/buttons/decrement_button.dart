import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/buttons.dart';

class DecrementButton extends StatelessWidget {
  final action;

  const DecrementButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonTextButton(
        action: action, textDetail: '-', textSize: AppSizeList.largeTextSize);
  }
}
