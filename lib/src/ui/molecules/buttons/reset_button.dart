import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/buttons.dart';

class ResetButton extends StatelessWidget {
  final action;

  const ResetButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonIconButton(
        action: action,
        textDetail: 'リセット',
        textSize: AppSizeList.mediumTextSize,
        icon: const Icon(Icons.restart_alt));
  }
}
