import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/common_text_button.dart';

class IncrementButton extends StatelessWidget {
  final action;

  const IncrementButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonTextButton(
        action: action, textDetail: '+', textSize: AppSizeList.largeTextSize);
  }
}
